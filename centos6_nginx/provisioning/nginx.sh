#!/usr/bin/env bash
echo '================================= NGINX ==================================='
sudo yum install -y http://mirrors.yun-idc.com/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum install -y nginx

sudo service nginx start
