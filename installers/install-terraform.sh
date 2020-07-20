#!/bin/bash

curl "https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip" -o "terraform.zip"

unzip ./terraform.zip

chmod +x ./terraform

sudo mv ./terraform /usr/local/bin/

rm ./terraform.zip

sudo chown root:root /usr/local/bin/terraform