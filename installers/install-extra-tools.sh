#!/bin/bash

# transmision
if [ -z "$(which transmission-gtk)" ]; then
    echo -ne 'y\n' | sudo add-apt-repository ppa:transmissionbt/ppa
    sudo apt-get install -yqq transmission-gtk transmission-cli transmission-common transmission-daemon
fi

# filezilla
sudo apt-get install -y filezilla

# povray required for leocad
sudo apt-get install -y povray

# leocad
if [ -z "$(which leocad)" ]; then
    wget https://github.com/leozide/leocad/releases/download/v19.07.1/LeoCAD-Linux-19.07.1-x86_64.AppImage -P /tmp
    sudo chmod 700 /tmp/LeoCAD-Linux-19.07.1-x86_64.AppImage
    # move to binary folder and rename to leocad
    sudo mv /tmp/LeoCAD-Linux-19.07.1-x86_64.AppImage /usr/local/bin/leocad
fi

# vlc
sudo apt-get install -yqq vlc

# easytag
sudo apt-get install -yqq easytag

# kdeconnect

# lynis security auditing toolkit
if [ -z "$(which lynis)" ]; then
    wget https://downloads.cisofy.com/lynis/lynis-3.0.0.tar.gz -P /tmp
    cd /tmp
    tar xvzf lynis-3.0.0.tar.gz
    sudo mv lynis /usr/local/
    sudo ln -s /usr/local/lynis/lynis /usr/local/bin/lynis
    rm /tmp/lynis-3.0.0.tar.gz
fi

# gparted
if [ -z "$(which gparted)" ]; then
    sudo apt-get install -yqq gparted
fi
# brew && pip3
#bash ./installers/install-brew.sh