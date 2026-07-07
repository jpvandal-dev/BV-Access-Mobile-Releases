# B&V Access Server v19 - B&V Ads Storage

Build: `server-v19-bv-ads-storage`

Objectif: aligner le backend Render avec le module B&V Ads sans modifier l'APK, UniFi, le portail captif, les vouchers ou la logique de vente.

## Ordre d'installation

1. Dans Supabase SQL Editor, executer:
   `bv-access-mobile/supabase/ad_banners.sql`

2. Dans Supabase SQL Editor, verifier avec:
   `bv-access-mobile/supabase/ad_banners_verify.sql`

3. Deployer ce package sur Render avec:
   - `server.cjs`
   - `package.json`
   - `package-lock.json`
   - `public/`

## Verifications attendues

- `GET https://bv-access-api.onrender.com/health`
  doit retourner `server_build: "server-v19-bv-ads-storage"`.

- `GET https://bv-access-api.onrender.com/api/announcements`
  doit retourner les annonces publiques avec les champs Ads:
  `category`, `image_url`, `logo_url`, `cta_label`, `cta_url`, `priority`, `scope`, `site_id`, `starts_at`, `ends_at`, `is_active`.

- `GET https://bv-access-api.onrender.com/admin/announcements`
  doit retourner `200` avec un JWT Admin valide.

- `POST/PATCH https://bv-access-api.onrender.com/admin/announcements`
  doivent accepter et sauvegarder `image_url`, `logo_url`, `cta_label`, `cta_url`, `category`, `scope`, `site_id`, `starts_at`, `ends_at`, `priority`, `is_active`.

## Bucket Supabase Storage

Nom obligatoire du bucket: `bv-ad-banners`

Formats acceptes:
- JPG / JPEG
- PNG
- WebP

Le bucket est public en lecture afin que les bannieres publiees puissent s'afficher dans l'application Client/Agent.
