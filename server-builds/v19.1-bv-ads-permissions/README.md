# B&V Access Server v19.1 - B&V Ads Permissions

Build: server-v19-bv-ads-storage

Contenu:
- backend v19 avec champs Ads;
- route DELETE /admin/announcements/:id pour archiver une annonce;
- scripts Supabase Ads et verification permissions.

Ordre:
1. Executer ad_banners.sql dans Supabase SQL Editor.
2. Executer ad_banners_verify.sql.
3. Executer ad_banners_permissions_verify.sql.
4. Deployer le ZIP sur Render.
5. Verifier /health et l'upload Admin.
