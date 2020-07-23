#!/bin/bash

if [[ -z "$(which vagrant)" ]]; then

    curl "https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_linux_amd64.zip" -o "vagrant.zip"

    unzip ./vagrant.zip

    chmod +x ./vagrant

    sudo mv ./vagrant /usr/local/bin/

    sudo chown root:root /usr/local/bin/vagrant

    rm ./vagrant.zip
fi