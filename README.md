# caddy-extended
Automatic Caddy container image with some extra modules installed

Extra modules:
- https://github.com/caddyserver/cache-handler
- https://github.com/caddy-dns/cloudflare
- https://github.com/pberkel/caddy-storage-redis
- https://github.com/lucaslorentz/caddy-docker-proxy

While [Caddy-Docker-Proxy](https://github.com/lucaslorentz/caddy-docker-proxy) is included, it is not run by default.
You can use it by setting the command to `caddy docker-proxy`.
