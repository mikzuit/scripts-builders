#!/bin/bash
bash ./installers/install-gimp.sh
bash ./installers/install-inkscape.sh
sudo snap install blender --classic

# kdenlive
echo -ne '\n' | sudo add-apt-repository ppa:kdenlive/kdenlive-stable
sudo apt-get install -y kdenlive