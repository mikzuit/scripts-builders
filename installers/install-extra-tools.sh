#!/bin/bash

# transmision
if [ -z "$(which transmission-gtk)" ]; then
    echo -ne 'y\n' | sudo add-apt-repository ppa:transmissionbt/ppa
    sudo apt-get install -yqq transmission-gtk transmission-cli transmission-common transmission-daemon
fi

# filezilla
if [ -z "$(which filezilla)" ]; then
    sudo apt-get install -y filezilla
fi

# povray required for leocad
if [ -z "$(which povray)" ]; then
    sudo apt-get install -y povray
fi

# leocad
if [ -z "$(which leocad)" ]; then
    wget https://github.com/leozide/leocad/releases/download/v19.07.1/LeoCAD-Linux-19.07.1-x86_64.AppImage -P /tmp
    sudo chmod 755 /tmp/LeoCAD-Linux-19.07.1-x86_64.AppImage
    # move to binary folder and rename to leocad
    sudo mv /tmp/LeoCAD-Linux-19.07.1-x86_64.AppImage /usr/local/bin/leocad
    sudo chown root:root /usr/local/bin/leocad
fi

# vlc
if [ -z "$(which vlc)" ]; then
    sudo apt-get install -yqq vlc
fi

# easytag
if [ -z "$(which easytag)" ]; then
    sudo apt-get install -yqq easytag
fi

# fslint-gui (search duplicated files)
if [ -z "$(which fslint-gui)" ]; then
    mkdir -p ~/tmp/fslint
    cd ~/tmp/fslint
    wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-6_amd64.deb
    wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-glade2_2.24.0-6_amd64.deb
    wget http://archive.ubuntu.com/ubuntu/pool/universe/f/fslint/fslint_2.46-1_all.deb

    sudo apt-get install -y ./*.deb
    sudo rm -R /tmp/fslint
fi
# brew && pip3
#bash ./installers/install-brew.sh