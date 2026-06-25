# BV Access Server Build v12 UniFi MAC Resolver

Build: `server-scalable-multi-ucg-v12-unifi-mac-resolver`

Portal build: `portal-unifi-mac-debug-v6`

Archive:

- `bv-access-server-v12-unifi-mac-resolver.zip`

Contents:

- `server.cjs`
- `public/portal.html`
- `connected_time_sessions.sql`
- `unifi_sites.sql`

Fix scope:

- Expands UniFi captive portal MAC parameter detection.
- Logs query, sanitized headers, body, cookies, IP candidates, and MAC candidates.
- Lets the portal submit a complete voucher even when the MAC is absent from the URL.
- Resolves the client MAC server-side from UniFi `stat/sta` / `stat/guest` by request IP when needed.
- Returns a clear MAC diagnostic payload if the MAC still cannot be resolved.

