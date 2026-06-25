# BV Access Server Build v11 UniFi Auth Cooldown

Build: `server-scalable-multi-ucg-v11-unifi-auth-cooldown`

Archive:

- `bv-access-server-v11-unifi-auth-cooldown.zip`

Contents:

- `server.cjs`
- `public/portal.html`
- `connected_time_sessions.sql`
- `unifi_sites.sql`

Fix scope:

- Adds a local UniFi authentication cooldown after HTTP `429` or `AUTHENTICATION_FAILED_LIMIT_REACHED`.
- Prevents repeated `/api/auth/login` attempts while the controller is rate-limiting.
- Skips `stat/guest` when `stat/sta` already failed because UniFi auth is rate-limited or in cooldown.
- Adds clear logs: `UNIFI AUTH RATE LIMITED`, `UNIFI AUTH COOLDOWN ACTIVE`, and `retry_after_ms`.

