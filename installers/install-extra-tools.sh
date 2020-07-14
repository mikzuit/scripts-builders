#!/bin/bash

# jq -> json parser for terminal
git clone https://github.com/stedolan/jq.git

cd jq

autoreconf -i

./configure --disable-maintainer-mode

make

sudo make install

# transmision
sudo add-apt-repository ppa:transmissionbt/ppa
sudo apt-get install transmission-gtk transmission-cli transmission-common transmission-daemon


# filezilla
sudo apt install -y filezilla

