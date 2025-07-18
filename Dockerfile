FROM caddy:2.10-builder AS builder

RUN xcaddy build --with github.com/caddy-dns/netcup@607c7dafa2ee10f3aa486d22526c34925b01df3c

FROM caddy:2.10

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

LABEL org.opencontainers.image.source=https://github.com/Walzen-Group/caddy-netcup
