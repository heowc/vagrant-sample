echo '================================= DOCKER ================================='
sudo yum install -y http://mirrors.yun-idc.com/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum install -y docker-io
sudo service docker start
sudo chkconfig docker on

echo '================================== DCS ==================================='
sudo curl -sL bit.ly/ralf_dcs -o ./dcs
sudo chmod 755 ./dcs
sudo mv ./dcs /usr/bin/dcs
