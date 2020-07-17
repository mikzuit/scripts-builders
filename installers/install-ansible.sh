#!/bin/bash

# sudo apt update || exit 1
# sudo apt install software-properties-common ||  exit 1
# sudo apt-add-repository --yes --update ppa:ansible/ansible-2.6.1-1
# sudo apt install ansible || exit 1

# line below in case you need ansible be installed by pip3

# if [[ -z "$(which ansible)" ]]; then
#     sudo -H pip3 install ansible==2.10
# fi
if [[ -z "$(which ansible)" ]]; then
    sudo apt update
    sudo apt-get install -yqq software-properties-common
    sudo apt-add-repository --yes --update ppa:ansible/ansible
    sudo apt-get install -yqq ansible || exit 1
fi