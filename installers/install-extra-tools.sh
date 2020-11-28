#!/bin/bash

# importing helper-function.sh
. $(dirname "$0")/helper-function.sh

# transmision
if [ -z "$(which transmission-gtk)" ]; then
    echo -ne 'y\n' | sudo add-apt-repository ppa:transmissionbt/ppa
    sudo apt-get install -yqq transmission-gtk transmission-cli transmission-common transmission-daemon
    if [ "$(which transmission)" ]; then
        banner "transmission successfully installed"
    else
        banner "Something went wrong with transmission installation"
    fi
else
    banner "transmission already installed"
fi

# filezilla
if [ -z "$(which filezilla)" ]; then
    sudo apt-get install -y filezilla
    if [ "$(which filezilla)" ]; then
        banner "filezilla successfully installed"
    else
        banner "Something went wrong with filezilla installation"
    fi
else
    banner "filezilla already installed"
fi

# povray required for leocad
if [ -z "$(which povray)" ]; then
    sudo apt-get install -y povray
    if [ "$(which povray)" ]; then
        banner "povray successfully installed"
    else
        banner "Something went wrong with povray installation"
    fi
else
    banner "povray already installed"
fi

# leocad
if [ -z "$(which leocad)" ]; then
    wget https://github.com/leozide/leocad/releases/download/v19.07.1/LeoCAD-Linux-19.07.1-x86_64.AppImage -P /tmp
    sudo chmod 755 /tmp/LeoCAD-Linux-19.07.1-x86_64.AppImage
    # move to binary folder and rename to leocad
    sudo mv /tmp/LeoCAD-Linux-19.07.1-x86_64.AppImage /usr/local/bin/leocad
    sudo chown root:root /usr/local/bin/leocad
    if [ "$(which leocad)" ]; then
        banner "leocad successfully installed"
    else
        banner "Something went wrong with Leocad installation"
    fi
else
    banner "Leocad already installed"
fi

# vlc
if [ -z "$(which vlc)" ]; then
    sudo apt-get install -yqq vlc
    if [ "$(which vlc)" ]; then
        banner "Vlc successfully installed"
    else
        banner "Something went wrong with Vlc installation"
    fi
else
    banner "Vlc already installed"
fi

# easytag
if [ -z "$(which easytag)" ]; then
    sudo apt-get install -yqq easytag
    if [ "$(which easytag)" ]; then
        banner "easytag successfully installed"
    else
        banner "Something went wrong with easytag installation"
    fi
else
    banner "Easytag already installed"
fi

# fslint-gui (search duplicated files)
# if [ -z "$(which fslint-gui)" ]; then
#     banner "installing fslint-gui"

#     mkdir -p /tmp/fslint
#     cd /tmp/fslint
#     wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-gtk2_2.24.0-6_amd64.deb
#     wget http://archive.ubuntu.com/ubuntu/pool/universe/p/pygtk/python-glade2_2.24.0-6_amd64.deb
#     wget http://archive.ubuntu.com/ubuntu/pool/universe/f/fslint/fslint_2.46-1_all.deb

#     sudo apt-get install -y /tmp/fslint/*.deb
#     sudo rm -R /tmp/fslint
#     if [ "$(which fslint-gui)" ]; then
#         banner "fslint-gui successfully installed"
#     else
#         banner "Something went wrong with fslint-gui installation"
#     fi
# else
#     banner "fslint-gui already installed"
# fi
# brew && pip3
#bash ./installers/install-brew.sh