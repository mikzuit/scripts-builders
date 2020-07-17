#!/bin/bash

sudo apt-get install -yqq build-essential ca-certificates apt-transport-https \
gnupg-agent software-properties-common apt-utils nano gedit file unzip htop tar || exit 1

if [[ -z  "$(which curl)" ]]; then
    sudo apt-get install -yqq curl
fi

if [[ -z  "$(which wget)" ]]; then
    sudo apt-get install -yqq wget
fi

if [[ -z  "$(which git)" ]]; then
    sudo apt-get install -yqq git || exit 1
fi

sudo apt-get install -yqq terminator

# jq -> json parser for terminal
git clone https://github.com/stedolan/jq.git

cd jq

autoreconf -i

./configure --disable-maintainer-mode

make

sudo make install

# brew && pip3
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo eval" ($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval $($(brew --prefix)/bin/brew shellenv)" >>~/.profile

brew install pip3

# postman skype zoom blender
sudo snap install postman zoom-client
sudo snap install skype --classic
sudo snap install blender

# libpam_cracklib password security
sudo apt-get install -y libpam-cracklib
sed -i.bak '{s/password[[:space:]]\+requisite[[:space:]]\+pam_cracklib.so retry=3 minlen=8 difok=3/password        requisite       pam_cracklib.so retry=3 minlen=16 difok=3 ucredit=-1 lcredit=-2 dcredit=-2 ocredit=-2/g}' /etc/pam.d/common-password

# vscode && code-insiders
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt-get install -y code code-insiders || exit

#apt-utils
