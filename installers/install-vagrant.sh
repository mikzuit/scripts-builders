#!/bin/bash

if [ -z "$(which vagrant)" ]; then

    curl "https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_linux_amd64.zip" -o "/tmp/vagrant.zip"

    unzip -o /tmp/vagrant.zip -d /tmp

    chmod +x /tmp/vagrant

    sudo mv /tmp/vagrant /usr/local/bin/

    sudo rm /tmp/vagrant.zip

    sudo chown root:root /usr/local/bin/vagrant

fi