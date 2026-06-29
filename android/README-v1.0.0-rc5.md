# B&V Access Mobile 1.0.0-rc5

- APK: `bv-access-mobile-v1.0.0-rc5-versionCode22-release.apk`
- Package Android: `com.bvsolutions.bvaccess`
- Version code: `22`
- SHA256: `4fa84ce4942ff72d2ba16d1aa17f9250412a8a89337c8a45223daecfa30422a2`
- Build type: release APK signé

## Changements RC5

- API hybride central/local pour ventes, réservations, catalogue, annonces et vérification des vouchers.
- API centrale publique prioritaire pour créer des vouchers depuis n'importe quel réseau Internet.
- API locale Mini-PC conservée comme secours et pour l'environnement terrain.
- Espace Client élargi en accueil de plateforme: Internet B&V, vouchers, Wallet, recharges, factures, promotions, compte et paramètres.
- Wallet préparé sans solde simulé.
- Annonces visibles aussi sur l'écran de connexion.
- Logo B&V remis en avant avec Fondation Matana en badge institutionnel plus discret.

## Validations locales

- `npm run typecheck`: PASS.
- `npx expo-doctor`: 17/18 PASS. Avertissement restant: projet avec dossier `android/`, donc certaines propriétés natives `app.json` ne sont pas automatiquement resynchronisées.
- `./scripts/build-android-release-local.sh`: PASS.
- Métadonnées APK confirmées par `aapt`: versionName `1.0.0-rc5`, versionCode `22`.

## Publication

Le fichier est généré localement dans:

```text
bv-access-mobile/releases/android/bv-access-mobile-v1.0.0-rc5-versionCode22-release.apk
```

Le lien public et le QR Code permanent doivent être créés après publication du fichier sur GitHub Release, Supabase Storage ou autre stockage public stable.
