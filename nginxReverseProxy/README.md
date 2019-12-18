# Reverse Proxy with Nginx

    sudo apt -y install nginx


Ensure NGINX is running and and enabled to start automatically on reboot:

sudo systemctl start nginx
sudo systemctl enable nginx

# Config

/etc/nginx/nginx.conf should have "include /etc/nginx/conf.d/*.conf;"

Copy *.conf to /etc/nginx/conf.d/

Restart: sudo systemctl restart nginx

# From

https://www.linode.com/docs/web-servers/nginx/use-nginx-reverse-proxy/

http://ryan.himmelwright.net/post/nginx-subdomain-reverse-proxy/
