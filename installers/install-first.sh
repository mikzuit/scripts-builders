#!/bin/bash

sudo apt-get update

sudo apt-get install -yqq build-essential ca-certificates apt-transport-https autoconf gnupg-agent net-tools nmap\
 software-properties-common apt-utils nano gedit file unzip htop tar openssh-server gnupg2 dconf-editor || exit 1

sudo systemctl enable ssh
sudo systemctl start ssh

if [ -z  "$(which curl)" ]; then
    sudo apt-get install -yqq curl
fi

if [ -z  "$(which pass)" ]; then
    sudo apt-get install -yqq pass
fi

if [ -z  "$(which wget)" ]; then
    sudo apt-get install -yqq wget
fi

if [ -z  "$(which git)" ]; then
    sudo apt-get install -yqq git || exit 1
fi

if [ -z  "$(which terminator)" ]; then
    sudo apt-get install -yqq terminator
fi

if [ -z  "$(which jq)" ]; then
    bash ./installers/install-jq.sh
fi

# skype
sudo snap install zoom-client
# zoom
sudo snap install skype --classic

# libpam_cracklib password security
sudo apt-get install -y libpam-cracklib
sed -i.bak '{s/password[[:space:]]\+requisite[[:space:]]\+pam_cracklib.so retry=3 minlen=8 difok=3/password        requisite       pam_cracklib.so retry=3 minlen=16 difok=3 ucredit=-1 lcredit=-2 dcredit=-2 ocredit=-2/g}' /etc/pam.d/common-password

#tweak tools
if [ -z "$(which gnome-tweaks)" ]; then
    sudo add-apt-repository universe
    sudo apt install -y gnome-tweak-tool                                    
fi

#systemd timezone required for docker 
# gparted
if [ -z "$(which gparted)" ]; then
    sudo apt-get install -yqq gparted
fi

# chrome browser
if [ -z "$(which google-chrome)" ]; then
    bash ./installers/install-chrome.sh
fi

# tor browser
if [ -z "$(which tor)" ]; then
    sudo apt-get install -y torbrowser-launcher
fi