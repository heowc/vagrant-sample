#!/usr/bin/env bash
echo '================================= DOCKER ================================='
sudo yum install -y http://mirrors.yun-idc.com/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum update -y
sudo yum install -y docker-io
sudo service docker start
sudo chkconfig docker on

echo '============================= DOCKER COMPOSE ============================='
sudo curl -fsSL https://github.com/docker/compose/releases/download/1.3.0/docker-compose-`uname -s`-`uname -m` > /usr/bin/docker-compose
sudo chmod 755 /usr/bin/docker-compose

echo '================================== DCS ==================================='
sudo curl -sL bit.ly/ralf_dcs -o ./dcs
sudo chmod 755 ./dcs
sudo mv ./dcs /usr/bin/dcs
