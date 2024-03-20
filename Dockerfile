FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddyserver/cache-handler \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/pberkel/caddy-storage-redis

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
