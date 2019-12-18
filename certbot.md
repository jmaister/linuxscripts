

# Create certs for nginx

    sudo certbot --nginx -d paellalabs.com -d jenkins.paellalabs.com

# Renew

## Dry-run

    certbot renew --dry-run


Check that the renew task is set up:

    systemctl list-timers

