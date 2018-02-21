#!/usr/bin/env bash
echo '============================ TERRAFORM SETTING ============================'

TERRAFORM_VERSION=$1

sudo wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
sudo chmod 755 terraform
sudo mv terraform /usr/local/bin/

terraform --version
