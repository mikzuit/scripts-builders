#!/bin/bash

# sudo apt update || exit 1
# sudo apt install software-properties-common ||  exit 1
# sudo apt-add-repository --yes --update ppa:ansible/ansible-2.6.1-1
# sudo apt install ansible || exit 1
if [[ -z "$(which ansible)" ]]; then
    sudo -H pip3 install ansible==2.9.7
fi