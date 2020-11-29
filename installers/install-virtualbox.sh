#!/bin/bash

# importing helper-function.sh
. $(dirname "$0")/helper-function.sh

# wget http://download.virtualbox.org/virtualbox/6.1.0_RC1/VBoxGuestAdditions_6.1.0_RC1.iso

# wget https://download.virtualbox.org/virtualbox/6.1.10/virtualbox-6.1_6.1.10-138449~Ubuntu~eoan_amd64.deb

# sudo dpkg -i virtualbox-6.1_6.1.10-138449~Ubuntu~eoan_amd64.deb

# install from oracle repos
if [ -z "$(which virtualbox)" ]; then
     wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
     wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

     echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian eoan contrib" | \
          sudo tee -a /etc/apt/sources.list.d/virtualbox.list

     sudo apt-get update
     sudo apt-get install -y virtualbox-6.1

     wget https://download.virtualbox.org/virtualbox/6.1.12/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack -P /tmp
     # requires a 'y' answer and hit enter
     echo -ne 'y\n' | sudo VBoxManage extpack install /tmp/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack

     # download guest additions to be installed from virtualbox, will leave the file in you /tmp folder
     wget http://download.virtualbox.org/virtualbox/6.1.0_RC1/VBoxGuestAdditions_6.1.0_RC1.iso -P /tmp
     
     # remove extension pack file
     sudo rm /tmp/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack

     if [ "$(which virtualbox)" ]; then
        banner "virtualbox successfully installed"
    else
        banner "Something went wrong with virtualbox installation"
    fi
else
    banner "virtualbox already installed"
fi