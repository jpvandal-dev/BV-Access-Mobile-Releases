select
  column_name,
  data_type,
  is_nullable,
  column_default
from information_schema.columns
where table_schema = 'public'
  and table_name = 'announcements'
  and column_name in (
    'category',
    'image_url',
    'logo_url',
    'cta_label',
    'cta_url',
    'priority',
    'scope',
    'site_id',
    'starts_at',
    'ends_at',
    'is_active'
  )
order by column_name;

select
  id as bucket_id,
  name as bucket_name,
  public as is_public,
  file_size_limit,
  allowed_mime_types
from storage.buckets
where id = 'bv-ad-banners';

select
  policyname,
  cmd,
  roles
from pg_policies
where schemaname = 'storage'
  and tablename = 'objects'
  and policyname like 'bv ad banners%'
order by policyname;
