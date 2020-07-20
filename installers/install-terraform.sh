#!/bin/bash

curl "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip" -o "/tmp/terraform.zip"

unzip /tmp/terraform.zip

chmod +x /tmp/terraform

sudo mv /tmp/terraform /usr/local/bin/

rm /tmp/terraform.zip

echo "------------> terraform zip file removed succesfully"

sudo chown root:root /usr/local/bin/terraform

echo "------------> terraform installed succesfully"