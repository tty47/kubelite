#!/bin/bash
# Description:
# The following script installs all the requirements in a 
# Ubuntu server to run Jenkins and all the packages need.

# Jenkins Installation
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update && sudo apt upgrade -y
sudo apt install -y openjdk-11-jdk jenkins docker.io docker-compose
sudo apt-get install -y \
    openjdk-11-jdk \
    jenkins 

# Docker CE installation
# https://docs.docker.com/engine/install/ubuntu/
sudo mkdir -p /etc/apt/keyrings
if [ ! -f "/etc/apt/keyrings/docker.gpg" ];then
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
fi

 echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

 sudo apt-get update
 sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-compose-plugin \
    docker-compose \
    jq

sudo usermod -aG docker jenkins
sudo service jenkins restart

# Kubectl
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
