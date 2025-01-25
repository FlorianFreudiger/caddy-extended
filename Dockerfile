FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/cache-handler \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/pberkel/caddy-storage-redis \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2 \
    --with github.com/tailscale/caddy-tailscale=github.com/FlorianFreudiger/caddy-tailscale@build

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
