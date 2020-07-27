#!/bin/bash

sudo apt-get update

sudo apt-get install -yqq build-essential ca-certificates apt-transport-https autoconf gnupg-agent net-tools nmap\
 software-properties-common apt-utils nano gedit file unzip htop tar openssh-server gnupg2 dconf-editor lm-sensors || exit 1

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

#tweak tools
if [ -z "$(which gnome-tweaks)" ]; then
    sudo add-apt-repository universe
    sudo apt install -y gnome-tweak-tool                                    
fi

# gparted
if [ -z "$(which gparted)" ]; then
    sudo apt-get install -yqq gparted
fi

# Videoconference
## skype
sudo snap install zoom-client
## zoom
sudo snap install skype --classic

# Browsers
## chrome browser
if [ -z "$(which google-chrome)" ]; then
    bash ./installers/install-chrome.sh
fi

## tor browser
if [ -z "$(which tor)" ]; then
    sudo apt-get install -y torbrowser-launcher
fi