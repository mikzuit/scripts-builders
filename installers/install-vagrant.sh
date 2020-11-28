#!/bin/bash

# importing helper-function.sh
. $(dirname "$0")/helper-function.sh

if [ -z "$(which vagrant)" ]; then

    curl "https://releases.hashicorp.com/vagrant/2.2.13/vagrant_2.2.13_linux_amd64.zip" -o "vagrant.zip"

    unzip -o vagrant.zip -d /tmp

    chmod +x /tmp/vagrant

    sudo mv /tmp/vagrant /usr/local/bin/

    sudo rm vagrant.zip

    sudo chown root:root /usr/local/bin/vagrant
    if [ "$(which vagrant)" ]; then
        banner "vagrant successfully installed"
    else
        banner "Something went wrong with vagrant installation"
    fi
else
    banner "vagrant already installed"
fi
