# caddy-extended
Automatic [Caddy](https://caddyserver.com/) container image with some extra modules installed

Extra modules:
- https://github.com/caddyserver/cache-handler
- https://github.com/caddy-dns/cloudflare
- https://github.com/pberkel/caddy-storage-redis
- https://github.com/lucaslorentz/caddy-docker-proxy
- https://github.com/tailscale/caddy-tailscale
    - Using [my fork of the module](https://github.com/FlorianFreudiger/caddy-tailscale/tree/build)
    until issues are fixed upstream

While [Caddy-Docker-Proxy](https://github.com/lucaslorentz/caddy-docker-proxy) is included, it is not run by default.
You can use it by setting the command to `caddy docker-proxy`.
