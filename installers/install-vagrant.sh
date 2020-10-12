#!/bin/bash

if [ -z "$(which vagrant)" ]; then

    curl "https://releases.hashicorp.com/vagrant/2.2.10/vagrant_2.2.10_linux_amd64.zip" -o "vagrant.zip"

    unzip -o vagrant.zip -d /tmp

    chmod +x /tmp/vagrant

    sudo mv /tmp/vagrant /usr/local/bin/

    sudo rm vagrant.zip

    sudo chown root:root /usr/local/bin/vagrant

fi