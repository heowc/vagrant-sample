echo '============================= DEFAILT SETTING ============================='
sudo yum update -y
sudo yum install -y curl
sudo yum install -y wget

sudo mkdir -p /root/.ssh
sudo cp -Rfv /c/User/.ssh/* /root/.ssh
