# BV Access Server Build v10 UniFi Cache Portal v4

Build: `server-scalable-multi-ucg-v10-unifi-cache-portal-v4`

Archive:

- `bv-access-server-v10-unifi-cache-portal-v4.zip`

Contents:

- `server.cjs`
- `public/portal.html`
- `connected_time_sessions.sql`
- `unifi_sites.sql`

Fixes:

- Reuses UniFi authentication sessions to avoid HTTP 429 login limits.
- Serves the captive portal from `/portal`, `/portal/`, `/portal.html`, and `/guest/s/<site>`.
- Forces the voucher code input to remain visible in Android captive browsers.
- Adds portal diagnostics showing whether the code field is visible.

