begin;

-- B&V Ads public storage bucket used by the mobile app.
-- Bucket name must stay aligned with src/services/adBannerUploadService.ts.
-- The bucket is public because published banners must render for all users.

alter table public.announcements
  add column if not exists category text not null default 'institutional'
    check (category in ('institutional', 'commercial')),
  add column if not exists image_url text,
  add column if not exists image_path text,
  add column if not exists image_mime_type text,
  add column if not exists logo_url text,
  add column if not exists logo_path text,
  add column if not exists cta_label text,
  add column if not exists cta_url text,
  add column if not exists action_label text,
  add column if not exists advertiser_name text,
  add column if not exists site_id text,
  add column if not exists is_active boolean;

do $$
begin
  if exists (
    select 1
    from information_schema.columns
    where table_schema = 'public'
      and table_name = 'announcements'
      and column_name = 'action_label'
  ) then
    execute 'update public.announcements set cta_label = coalesce(cta_label, action_label) where cta_label is null';
  end if;

  if exists (
    select 1
    from information_schema.columns
    where table_schema = 'public'
      and table_name = 'announcements'
      and column_name = 'link_url'
  ) then
    execute 'update public.announcements set cta_url = coalesce(cta_url, link_url) where cta_url is null';
  end if;

  if exists (
    select 1
    from information_schema.columns
    where table_schema = 'public'
      and table_name = 'announcements'
      and column_name = 'site_codes'
  ) then
    execute 'update public.announcements set site_id = coalesce(site_id, nullif((site_codes)[1], '''')) where site_id is null';
  end if;

  if exists (
    select 1
    from information_schema.columns
    where table_schema = 'public'
      and table_name = 'announcements'
      and column_name = 'active'
  ) then
    execute 'update public.announcements set is_active = coalesce(is_active, active) where is_active is null';
  end if;
end $$;

alter table public.announcements
  alter column is_active set default true;

create index if not exists announcements_category_idx
  on public.announcements (category);

create index if not exists announcements_site_id_idx
  on public.announcements (site_id);

create index if not exists announcements_is_active_idx
  on public.announcements (is_active);

insert into storage.buckets (
  id,
  name,
  public,
  file_size_limit,
  allowed_mime_types
)
values (
  'bv-ad-banners',
  'bv-ad-banners',
  true,
  6291456,
  array['image/jpeg', 'image/png', 'image/webp']
)
on conflict (id) do update
set
  public = excluded.public,
  file_size_limit = excluded.file_size_limit,
  allowed_mime_types = excluded.allowed_mime_types;

-- Safety update for projects where the bucket was created manually first.
update storage.buckets
set
  public = true,
  file_size_limit = 6291456,
  allowed_mime_types = array['image/jpeg', 'image/png', 'image/webp']
where id = 'bv-ad-banners';

drop policy if exists "bv ad banners public read" on storage.objects;
create policy "bv ad banners public read"
  on storage.objects
  for select
  to anon, authenticated
  using (bucket_id = 'bv-ad-banners');

drop policy if exists "bv ad banners admin insert" on storage.objects;
create policy "bv ad banners admin insert"
  on storage.objects
  for insert
  to authenticated
  with check (
    bucket_id = 'bv-ad-banners'
    and exists (
      select 1
      from public.user_profiles up
      where up.id = auth.uid()
        and up.role in ('admin_bv', 'admin')
        and coalesce(up.active, true) = true
    )
  );

drop policy if exists "bv ad banners admin update" on storage.objects;
create policy "bv ad banners admin update"
  on storage.objects
  for update
  to authenticated
  using (
    bucket_id = 'bv-ad-banners'
    and exists (
      select 1
      from public.user_profiles up
      where up.id = auth.uid()
        and up.role in ('admin_bv', 'admin')
        and coalesce(up.active, true) = true
    )
  )
  with check (
    bucket_id = 'bv-ad-banners'
    and exists (
      select 1
      from public.user_profiles up
      where up.id = auth.uid()
        and up.role in ('admin_bv', 'admin')
        and coalesce(up.active, true) = true
    )
  );

drop policy if exists "bv ad banners admin delete" on storage.objects;
create policy "bv ad banners admin delete"
  on storage.objects
  for delete
  to authenticated
  using (
    bucket_id = 'bv-ad-banners'
    and exists (
      select 1
      from public.user_profiles up
      where up.id = auth.uid()
        and up.role in ('admin_bv', 'admin')
        and coalesce(up.active, true) = true
    )
  );

commit;

select
  id as bucket_id,
  name as bucket_name,
  public as is_public,
  file_size_limit,
  allowed_mime_types
from storage.buckets
where id = 'bv-ad-banners';
