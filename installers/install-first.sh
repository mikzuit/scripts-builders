#!/bin/bash

sudo apt install -yqq build-essential ca-certificates apt-transport-https \
gnupg-agent software-properties-common python-software-properties nano gedit file unzip htop

sudo apt install -yqq curl

curl --version

sudo apt install -yqq wget

wget --version

sudo apt install -yqq git-all

git --version

sudo apt install -yqq terminator

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