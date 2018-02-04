#!/usr/bin/env bash
echo '================================= DOCKER ================================='
sudo apt-get remove -y docker docker-engine docker.io
sudo apt-get update -y
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"

sudo apt-get update -y
sudo apt-get install -y docker-ce

echo 'installed docker ...'
docker -v

echo '================================== DCS ==================================='
sudo curl -sL bit.ly/ralf_dcs -o ./dcs
sudo chmod 755 ./dcs
sudo mv ./dcs /usr/bin/dcs
