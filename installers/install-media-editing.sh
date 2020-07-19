#!/bin/bash
bash ./install-gimp.sh
bash ./install-inkscape.sh
sudo snap install blender --classic

# kdenlive
sudo add-apt-repository ppa:kdenlive/kdenlive-stable
echo -ne '\n' | sudo apt-get install -y kdenlive