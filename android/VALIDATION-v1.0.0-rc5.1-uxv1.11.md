# B&V Access Mobile - Advertising Banners V1.11 Validation

Version: 1.0.0-rc5.1-uxv1.11
Version code: 35
Package: com.bvsolutions.bvaccess
APK: bv-access-mobile-v1.0.0-rc5.1-uxv1.11-versionCode35-release.apk
SHA256: 57fc51ca1fd3fe0571b715885f535ef894eeff6364c7cc119972b497e14866ec

## Scope

This build adds Admin-managed advertising banners.

- Admin can create a banner campaign from the mobile app.
- Supports title, short text, national/local targeting, start/end dates, priority and active/inactive status.
- Supports optional partner logo, action button label and external link/WhatsApp.
- Supports JPG, PNG and WebP image upload through Expo Image Picker.
- Uploads banner/logo assets to Supabase Storage bucket `bv-ad-banners`.
- Shows a preview before publishing.
- Displays uploaded campaign images in announcement placements and the premium home carousel.
- Keeps institutional B&V banners as fallback when no uploaded advertising image is available.

No voucher, UniFi, captive portal, plan expiration, wallet, role or sales authorization logic was changed.

## Required Supabase Migration

Run this SQL before using image uploads:

`bv-access-mobile/supabase/ad_banners.sql`

This creates the `bv-ad-banners` public Storage bucket, Admin-only upload policies and the advertising fields on `public.announcements`.

## Backend Requirement

Deploy the updated `server.cjs` so `/api/announcements` and `/admin/announcements` read/write the new advertising fields.

## Validation

- TypeScript: PASS (`npm run typecheck`)
- Server syntax: PASS (`node --check server.cjs`)
- Android release build: PASS (`./scripts/build-android-release-local.sh`)
- Android manifest: PASS (`versionName=1.0.0-rc5.1-uxv1.11`, `versionCode=35`)
- APK signing: PASS (`apksigner verify`, same BV Access Mobile RC1 signing certificate)
- Release bundle check: PASS (`bv-ad-banners`, `expo-image-picker`, `Logo partenaire`, `Portefeuille B&V` present)
- Release bundle regression check: PASS (`Supabase Auth requis` absent)

## Public Links

APK:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/android/bv-access-mobile-v1.0.0-rc5.1-uxv1.11-versionCode35-release.apk

QR:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/qr/bv-access-mobile-v1.0.0-rc5.1-uxv1.11-versionCode35-download-qr.png
