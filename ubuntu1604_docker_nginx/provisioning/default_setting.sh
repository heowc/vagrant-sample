#!/usr/bin/env bash
echo '============================= DEFAILT SETTING ============================='
sudo apt-get update -y
sudo apt-get install -y curl
sudo apt-get install -y wget

sudo mkdir -p /root/.ssh
sudo cp -Rfv /host/.ssh/* /root/.ssh
