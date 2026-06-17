# caddy-extended
Automatic [Caddy](https://caddyserver.com/) container image with some extra modules installed

Extra modules:
- https://github.com/caddyserver/cache-handler
- https://github.com/caddy-dns/cloudflare
- https://github.com/mholt/caddy-dynamicdns
  - Using commit from fork https://github.com/mathiasandresen/caddy-dynamicdns until dynamic_dns option with wildcard exclusion is supported upstream
- https://github.com/mentimeter/caddy-storage-cf-kv
- https://github.com/pberkel/caddy-storage-redis
- https://github.com/lucaslorentz/caddy-docker-proxy
- https://github.com/tailscale/caddy-tailscale

While [Caddy-Docker-Proxy](https://github.com/lucaslorentz/caddy-docker-proxy) is included, it is not run by default.
You can use it by setting the command to `caddy docker-proxy`.
