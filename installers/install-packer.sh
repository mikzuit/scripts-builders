#!/bin/bash

# importing helper-function.sh
. $(dirname "$0")/helper-function.sh

if [ -z "$(which packer)" ]; then

    curl "https://releases.hashicorp.com/packer/1.6.5/packer_1.6.5_linux_amd64.zip" -o "packer.zip"

    unzip -o packer.zip -d /tmp

    chmod +x /tmp/packer

    sudo mv /tmp/packer /usr/local/bin/

    sudo rm packer.zip

    sudo chown root:root /usr/local/bin/packer
    if [ "$(which packer)" ]; then
        banner "packer successfully installed"
    else
        banner "Something went wrong with packer installation"
    fi
else
    banner "packer already installed"
fi
