# B&V Access Mobile - Premium Finish UX/UI V1.5 Validation

Version: 1.0.0-rc5.1-uxv1.5
Version code: 29
Package: com.bvsolutions.bvaccess
APK: bv-access-mobile-v1.0.0-rc5.1-uxv1.5-versionCode29-release.apk
SHA256: 8ed9fa9efe8dec7f535243c4aa75959a5d908195163d6f69556a3f04aa42227e

## Scope

This build improves the connected Home experience only.

- Adds a premium command panel on the post-login home page.
- Highlights the official slogan: "Bien plus que le Wi-Fi."
- Adds immediate premium actions for Internet purchase and vouchers.
- Adds visible B&V Ads and Devenir Agent entry points.
- Enhances the mobile promo carousel visual hierarchy.
- Hides carousel indicators automatically when only one card is available.
- Keeps official partner visibility limited to active partners:
  - Fondation Matana;
  - Haiti Bridge;
  - Damas Market Place.

No backend, Hybrid API, Supabase, Mini-PC, UniFi, captive portal, voucher, wallet, payment, plan expiration, role, or sales logic was changed.

## Validation

- TypeScript: PASS (`npm run typecheck`)
- Android release build: PASS (`./gradlew assembleRelease`)
- Android manifest: PASS (`versionName=1.0.0-rc5.1-uxv1.5`, `versionCode=29`)
- APK signing: PASS (`apksigner verify`, same BV Access Mobile RC1 signing certificate as UX v1.4)
- SHA256: PASS (`8ed9fa9efe8dec7f535243c4aa75959a5d908195163d6f69556a3f04aa42227e`)

## Public Links

APK:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/6480dce7b82358ba8184c8396168372e0753b725/android/bv-access-mobile-v1.0.0-rc5.1-uxv1.5-versionCode29-release.apk

QR:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/qr/bv-access-mobile-v1.0.0-rc5.1-uxv1.5-versionCode29-download-qr.png
