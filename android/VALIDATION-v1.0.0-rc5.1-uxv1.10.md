# B&V Access Mobile - Wallet Navigation Fix V1.10 Validation

Version: 1.0.0-rc5.1-uxv1.10
Version code: 34
Package: com.bvsolutions.bvaccess
APK: bv-access-mobile-v1.0.0-rc5.1-uxv1.10-versionCode34-release.apk
SHA256: fd465c082f26f272ccfcff8cb696e52920f9fd59e42f74f04d667c91215a4ead

## Scope

This build fixes the inactive Wallet action.

- Adds a dedicated "Portefeuille B&V" screen.
- Connects the "Mon Wallet" button from the client dashboard to the new screen.
- Connects the logged-in home "Wallet" shortcut to the same screen.
- Displays current balance placeholder, linked vouchers, recent purchases, recent payments, refunds placeholder, points/benefits placeholder and Wallet service status.
- Clearly states that advanced Wallet features will be activated progressively.

No backend, Hybrid API, Supabase schema, Mini-PC, UniFi, captive portal, voucher validation, plan expiration, payment, role or sales logic was changed.

## Validation

- TypeScript: PASS (`npm run typecheck`)
- Android release build: PASS (`./scripts/build-android-release-local.sh`)
- Android manifest: PASS (`versionName=1.0.0-rc5.1-uxv1.10`, `versionCode=34`)
- APK signing: PASS (`apksigner verify`, same BV Access Mobile RC1 signing certificate)
- Release bundle check: PASS (`Portefeuille B&V`, `Solde actuel`, `Paiements en attente`, `Mon Wallet` present)
- Release bundle regression check: PASS (`Supabase Auth requis` absent)

## Public Links

APK:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/android/bv-access-mobile-v1.0.0-rc5.1-uxv1.10-versionCode34-release.apk

QR:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/qr/bv-access-mobile-v1.0.0-rc5.1-uxv1.10-versionCode34-download-qr.png
