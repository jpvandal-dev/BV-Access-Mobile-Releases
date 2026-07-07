# B&V Access Mobile v1.0.0-rc5.1-uxv1.12

## Scope

- Fixes B&V Ads banner Storage setup.
- Keeps vouchers, captive portal, UniFi, Wallet and plans unchanged.
- Replaces the raw Supabase `Bucket not found` upload error with an Admin-safe message.

## Supabase requirement

Execute:

`bv-access-mobile/supabase/ad_banners.sql`

This migration creates/configures the public Supabase Storage bucket:

`bv-ad-banners`

It also configures Storage policies:

- Public read for published banner assets.
- Authenticated active Admin upload/update/delete.
- JPG, PNG and WebP only.
- 6 MB maximum file size.

## Build

- Version: `1.0.0-rc5.1-uxv1.12`
- Android versionCode: `36`
- APK: `bv-access-mobile-v1.0.0-rc5.1-uxv1.12-versionCode36-release.apk`
- SHA256: `28023d469eff87e3813e85206b482999d3a3195b699bda6cf7094dc9d9b96764`

## Validation

- TypeScript check: PASS
- `server.cjs` syntax check: PASS
- Android Release build: PASS
- APK signature verification: PASS
- Package metadata check: PASS
- QR generation: PASS
