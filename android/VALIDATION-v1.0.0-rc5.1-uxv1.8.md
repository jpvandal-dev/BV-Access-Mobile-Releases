# B&V Access Mobile - Admin National UX V1.8 Validation

Version: 1.0.0-rc5.1-uxv1.8
Version code: 32
Package: com.bvsolutions.bvaccess
APK: bv-access-mobile-v1.0.0-rc5.1-uxv1.8-versionCode32-release.apk
SHA256: 54c7c3dd75ff5231692b29d3edcfb0176cd0f9d94436bc6ee2616c4fabd6ae49

## Scope

This build focuses on the Admin National dashboard experience.

- Adds a dedicated "Admin National / National Control Center" header.
- Adds compact API, Supabase and UniFi status indicators.
- Replaces the old admin home layout with professional national KPI cards.
- Adds national performance, voucher status, site performance, recent activity and admin actions sections.
- Moves the full announcement manager behind a secondary "Gérer" action so it no longer dominates the dashboard.
- Adds real Fondation Matana and Haiti Bridge partner logos alongside Damas Market Place.

No backend, Hybrid API, Supabase schema, Mini-PC, UniFi, captive portal, voucher, wallet, payment, plan expiration, role or sales logic was changed.

## Validation

- TypeScript: PASS (`npm run typecheck`)
- Release bundle check: PASS (`National Control Center`, `Admin National`, `Performance par site`, `Actions Admin` present)
- Release bundle regression check: PASS (`Supabase Auth requis` absent, `Se connecter` present)
- Android release build: PASS (`./scripts/build-android-release-local.sh`)
- Android manifest: PASS (`versionName=1.0.0-rc5.1-uxv1.8`, `versionCode=32`)
- APK signing: PASS (`apksigner verify`, same BV Access Mobile RC1 signing certificate)
- APK native ABI: PASS (`armeabi-v7a`, `arm64-v8a`)

## Public Links

APK:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/android/bv-access-mobile-v1.0.0-rc5.1-uxv1.8-versionCode32-release.apk

QR:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/qr/bv-access-mobile-v1.0.0-rc5.1-uxv1.8-versionCode32-download-qr.png
