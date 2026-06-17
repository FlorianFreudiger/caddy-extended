FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/cache-handler \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/mholt/caddy-dynamicdns=github.com/mathiasandresen/caddy-dynamicdns@7ff91ec28302fdc77de5f61393fcdb318479157d \
    --with github.com/mentimeter/caddy-storage-cf-kv \
    --with github.com/pberkel/caddy-storage-redis \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2 \
    --with github.com/tailscale/caddy-tailscale

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
