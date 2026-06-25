# BV Access Server Build v10 UniFi Cache

Build: `server-scalable-multi-ucg-v10-unifi-cache`

Archive:

- `bv-access-scalable-multi-ucg-v10-unifi-cache.zip`

Contents:

- `server.cjs`
- `connected_time_sessions.sql`
- `unifi_sites.sql`

Purpose:

- Reuse one authenticated UniFi session per controller/user.
- Avoid repeated `/api/auth/login` calls during `connected_usage` polling.
- Retry authentication only on `401` or `403`.
- Do not retry on `429` to avoid worsening UniFi rate limits.

