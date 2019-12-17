
$NEW_USER=jordi

sudo adduser $NEW_USER
usermod -aG sudo $NEW_USER

sudo gpasswd -a $NEW_USER docker



