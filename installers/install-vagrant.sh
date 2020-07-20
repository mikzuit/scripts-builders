#!/bin/bash

if [[ -z "$(which vagrant)" ]]; then

    curl "https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_linux_amd64.zip" -o "/tmp/vagrant.zip"

    unzip /tmp/vagrant.zip

    chmod +x /tmp/vagrant

    sudo mv /tmp/vagrant /usr/local/bin/

    sudo rm -R /tmp/vagrant.zip

    echo -ne "\n------------> vagrant zip file removed succesfully"

    sudo chown root:root /usr/local/bin/vagrant

    echo -ne "\n------------> vagrant installed succesfully\n\n"

fi