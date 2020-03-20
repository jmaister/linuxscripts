
# Caddy server setup

Caddy as a reverse proxy

# Setup

Allow open ports <1024

    sudo setcap cap_net_bind_service=+ep ./caddy

# systemd

https://github.com/caddyserver/dist/blob/master/init/caddy.service
https://caddyserver.com/docs/install#manually-installing-as-a-linux-service

old: https://github.com/caddyserver/caddy/tree/master/dist/init/linux-systemd

## Commands

    sudo systemctl daemon-reload
    sudo systemctl enable caddy
    sudo systemctl start caddy
    sudo systemctl stop caddy

## Reload after edit config

    sudo nano /etc/caddy/Caddyfile
    sudo systemctl reload caddy

## Logs

    sudo journalctl -f -u caddy.service

# Run

    caddy run --config Caddyfile


## Reload

    nano /etc/caddy/Caddyfile
    sudo caddy reload --config /etc/caddy/Caddyfile



# Docker

https://hub.docker.com/r/caddy/caddy/dockerfile

# Links

https://caddyserver.com/docs/caddyfile/directives


