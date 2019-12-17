
# Linux setup



# Security

## Avoid root ssh connection, Manual step

    $ sudo nano /etc/ssh/sshd_config

Update *PermitRootLogin* to **no**

    # Authentication:
    ...
    PermitRootLogin no

    $ sudo systemctl restart sshd

## fail2ban: avoid brute forze attacks on ssh, Manual step


    $ sudo apt-get -y install fail2ban
    $ sudo apt-get -y install sendmail

    $ sudo cp /etc/fail2ban/fail2ban.conf /etc/fail2ban/fail2ban.local
    $ sudo nano /etc/fail2ban/fail2ban.local

add:

    bantime = 600
    findtime = 600
    maxretry = 3

    [ssh]
    enabled  = true
    port     = ssh
    filter   = sshd
    logpath  = /var/log/auth.log
    maxretry = 6


    $ sudo /etc/init.d/fail2ban reload
    $ sudo fail2ban-client status


