
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

# ssh key
ssh-keygen -t rsa -b 4096 -C "jordiburgos@gmail.com"
