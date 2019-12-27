
sudo apt -y update && sudo apt -y upgrade

# Docker
sudo apt -y install docker.io
sudo apt -y install docker-compose

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
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install gcc g++ make


# ssh key
ssh-keygen -t rsa -b 4096 -C "jordiburgos@gmail.com"
