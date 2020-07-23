#!/bin/bash

if [ -z "$(which vagrant)" ]; then

<<<<<<< HEAD
    curl "https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_linux_amd64.zip" -o "vagrant.zip"
=======
    curl "https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_linux_amd64.zip" -o "/tmp/vagrant.zip"
>>>>>>> ae78f79180f48da85832f1a7403e8f28cb5ea25f

    unzip -o /tmp/vagrant.zip -d /tmp

    chmod +x /tmp/vagrant

    sudo mv /tmp/vagrant /usr/local/bin/

    sudo rm /tmp/vagrant.zip

    sudo chown root:root /usr/local/bin/vagrant

    rm ./vagrant.zip
fi