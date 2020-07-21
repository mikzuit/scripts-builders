#!/bin/bash

sudo apt-get install -yqq build-essential ca-certificates apt-transport-https autoconf \
gnupg-agent software-properties-common apt-utils nano gedit file unzip htop tar openssh-server gnupg2 || exit 1

sudo systemctl enable ssh
sudo systemctl start ssh

if [ -z  "$(which curl)" ]; then
    sudo apt-get install -yqq curl
fi

if [ -z  "$(which wget)" ]; then
    sudo apt-get install -yqq wget
fi

if [ -z  "$(which git)" ]; then
    sudo apt-get install -yqq git || exit 1
fi

sudo apt-get install -yqq terminator

# jq -> json parser for terminal
cd /tmp
git clone https://github.com/stedolan/jq.git
cd jq
autoreconf -i
./configure --disable-maintainer-mode
make
sudo make install
cd /tmp
sudo rm -R ./jq

# postman skype zoom blender
sudo snap install postman
sudo snap install zoom-client
sudo snap install skype --classic

# libpam_cracklib password security
sudo apt-get install -y libpam-cracklib
sed -i.bak '{s/password[[:space:]]\+requisite[[:space:]]\+pam_cracklib.so retry=3 minlen=8 difok=3/password        requisite       pam_cracklib.so retry=3 minlen=16 difok=3 ucredit=-1 lcredit=-2 dcredit=-2 ocredit=-2/g}' /etc/pam.d/common-password

# vscode && code-insiders
curl -sL https://packages.microsoft.com/keys/microsoft.asc |
    gpg --dearmor |
    sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" |
    sudo tee /etc/apt/sources.list.d/vscode.list

sudo apt-get update
sudo apt-get install -y code code-insiders || exit 1

#tweak tools
sudo add-apt-repository universe
sudo apt install -y gnome-tweak-tool

#systemd timezone required for docker 
# gparted
sudo apt-get install -y gparted

# chrome browser
bash ./installers/install-chrome.sh

# tor browser
sudo apt-get install -y torbrowser-launcher
