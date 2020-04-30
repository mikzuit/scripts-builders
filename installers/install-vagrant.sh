#!/bin/bash

curl "https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_linux_amd64.zip" -o "vagrant.zip"

unzip ./vagrant.zip

chmod +x ./vagrant

sudo mv ./vagrant /usr/local/bin/

sudo chown root:root /usr/local/bin/vagrant
