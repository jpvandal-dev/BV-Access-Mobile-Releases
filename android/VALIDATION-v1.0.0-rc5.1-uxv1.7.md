# B&V Access Mobile - Auth Regression Fix UX V1.7 Validation

Version: 1.0.0-rc5.1-uxv1.7
Version code: 31
Package: com.bvsolutions.bvaccess
APK: bv-access-mobile-v1.0.0-rc5.1-uxv1.7-versionCode31-release.apk
SHA256: 1a4fe4e627b9419bf99761ab8113780e76b0d854721a55fc60161c89b4b90fd2

## Scope

This build fixes the login screen regression introduced after UX v1.6.

- Restores the visible "Se connecter" button after the email and password fields.
- Removes the blocking "Supabase Auth requis" development message from the release login screen.
- Keeps the Damas Market Place logo integration.
- Keeps the premium Home UX improvements.

No backend, Hybrid API, Supabase schema, Mini-PC, UniFi, captive portal, voucher, wallet, payment, plan expiration, role, or sales logic was changed.

## Validation

- TypeScript: PASS (`npm run typecheck`)
- Release bundle check: PASS (`Supabase Auth requis` absent, `Se connecter` present)
- Supabase Auth test: PASS for Admin, Owner, Agent and Client test accounts
- Android release build: PASS (`./scripts/build-android-release-local.sh`)
- Android manifest: PASS (`versionName=1.0.0-rc5.1-uxv1.7`, `versionCode=31`)
- APK signing: PASS (`apksigner verify`, same BV Access Mobile RC1 signing certificate)
- APK size: PASS (50 MB, ARM Android devices only: `armeabi-v7a`, `arm64-v8a`)

## Public Links

APK:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/android/bv-access-mobile-v1.0.0-rc5.1-uxv1.7-versionCode31-release.apk

QR:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/qr/bv-access-mobile-v1.0.0-rc5.1-uxv1.7-versionCode31-download-qr.png
