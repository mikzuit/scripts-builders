#!/bin/bash

if [ -z "$(which terraform)" ]; then
    curl "https://releases.hashicorp.com/terraform/0.13.5/terraform_0.13.5_linux_amd64.zip" -o "/tmp/terraform.zip"

    unzip -o /tmp/terraform.zip -d /tmp

    chmod +x /tmp/terraform

    sudo mv /tmp/terraform /usr/local/bin/

    rm /tmp/terraform.zip

    sudo chown root:root /usr/local/bin/terraform
fi
