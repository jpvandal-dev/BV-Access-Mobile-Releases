select
  id,
  full_name,
  role,
  active,
  site_code,
  updated_at
from public.user_profiles
where role in ('admin_bv', 'admin')
order by created_at;

select
  policyname,
  cmd,
  roles,
  qual,
  with_check
from pg_policies
where schemaname = 'storage'
  and tablename = 'objects'
  and policyname like 'bv ad banners%'
order by policyname;

select
  id as bucket_id,
  name as bucket_name,
  public as is_public,
  file_size_limit,
  allowed_mime_types
from storage.buckets
where id = 'bv-ad-banners';
