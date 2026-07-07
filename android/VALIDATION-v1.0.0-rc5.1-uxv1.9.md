# B&V Access Mobile - Admin National Premium Polish V1.9 Validation

Version: 1.0.0-rc5.1-uxv1.9
Version code: 33
Package: com.bvsolutions.bvaccess
APK: bv-access-mobile-v1.0.0-rc5.1-uxv1.9-versionCode33-release.apk
SHA256: 7936b159519f88435de7c44f9df56292164c6be182140dee5e9c505c42db587b

## Scope

This build keeps the validated Admin National dashboard architecture and applies a premium polish pass.

- Adds more context to KPI cards: trends, daily comparison text, availability and operational notes.
- Adds lightweight national performance charts for revenue, sales, recharges and connections.
- Enriches site supervision cards with Starlink, UniFi, Mini-PC and API health placeholders.
- Adds a real-time feel with sync and last update labels.
- Adds a subtle entrance animation for the Admin dashboard.
- Improves color semantics: green for revenue/sites, blue for vouchers, orange for alerts, violet for commissions.
- Refines card spacing, shadows, contrast and visual hierarchy without moving the validated sections.

No backend, Hybrid API, Supabase schema, Mini-PC, UniFi, captive portal, voucher, wallet, payment, plan expiration, role, navigation or sales logic was changed.

## Validation

- TypeScript: PASS (`npm run typecheck`)
- Android release build: PASS (`./scripts/build-android-release-local.sh`)
- Android manifest: PASS (`versionName=1.0.0-rc5.1-uxv1.9`, `versionCode=33`)
- APK signing: PASS (`apksigner verify`, same BV Access Mobile RC1 signing certificate)
- Release bundle check: PASS (`National Control Center`, `Revenus 7 jours`, `Starlink`, `Mini-PC` present)
- Release bundle regression check: PASS (`Supabase Auth requis` absent, `Se connecter` present)

## Public Links

APK:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/android/bv-access-mobile-v1.0.0-rc5.1-uxv1.9-versionCode33-release.apk

QR:
https://raw.githubusercontent.com/jpvandal-dev/BV-Access-Mobile-Releases/main/qr/bv-access-mobile-v1.0.0-rc5.1-uxv1.9-versionCode33-download-qr.png
