#!/bin/bash
bash ./install-gimp.sh
bash ./install-inkscape.sh
sudo snap install blender

# kdenlive
sudo add-apt-repository ppa:kdenlive/kdenlive-stable
sudo apt-get install -y kdenlive