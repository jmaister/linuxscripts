
sudo apt -y update && sudo apt -y upgrade

# Docker
sudo apt -y install docker.io
sudo apt -y install docker-compose

# Utils
sudo apt -y install nmap htop


# Java JDK
sudo apt -y install openjdk-11-jdk
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/" >> ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc

# Maven
sudo apt -y install maven

# Gradle
sudo apt -y install gradle

# Git
sudo apt -y install git
git config --global user.name "Jordi Burgos"
git config --global user.email jordiburgos@gmail.com

# NodeJS: https://github.com/nodesource/distributions/blob/master/README.md
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs gcc g++ make

# Yarn: https://classic.yarnpkg.com/en/docs/install/#debian-stable
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

# ssh key
ssh-keygen -t rsa -b 4096 -C "jordiburgos@gmail.com"
