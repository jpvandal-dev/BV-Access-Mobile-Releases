# B&V Access Mobile 1.0.0-rc5.1

- APK: `bv-access-mobile-v1.0.0-rc5.1-versionCode23-release.apk`
- Package Android: `com.bvsolutions.bvaccess`
- Version code: `23`
- SHA256: `b663a439db02bf7bc3cf10cc5426fb2bc9e9711453e1b8448f6b9fe06e3fa5c8`
- Build type: release APK signé

## Correctifs depuis RC5

- Ajout d'un écran visible `Changer de rôle / Déconnexion`.
- Sélection de rôle limitée aux rôles autorisés par Supabase Auth metadata et au rôle principal `public.user_profiles`.
- Déconnexion complète disponible depuis un écran dédié.
- Diagnostic Hybrid API amélioré: affiche toutes les tentatives backend central/local et leurs statuts HTTP.

## Limite backend connue

Render répond encore avec le build `server-supabase-vouchers-session-expiry-production-prep-v7` et ne possède pas encore `/api/plans` ni `/api/announcements`.
Le Mini-PC v18 possède ces routes. Render doit être mis à jour avant de valider les annonces et le catalogue depuis Internet externe.
