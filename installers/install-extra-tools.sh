#!/bin/bash

# transmision
sudo add-apt-repository ppa:transmissionbt/ppa
sudo apt-get install transmission-gtk transmission-cli transmission-common transmission-daemon


# filezilla
sudo apt install -y filezilla

# leocad
curl -fs https://github.com/leozide/leocad/releases/download/v19.07.1/LeoCAD-Linux-19.07.1-x86_64.AppImage
sudo chmod 700 LeoCAD-Linux-19.07.1-x86_64.AppImage
# move to binary folder and rename to leocad
sudo mv LeoCAD-Linux-19.07.1-x86_64.AppImage /usr/loca/bin/leocad

# vlc
sudo apt-get install -yqq vlc

# blender

# easytag
sudo apt-get install -yqq easytag

# kdeconnect