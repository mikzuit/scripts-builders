#!/bin/bash

# importing helper-function.sh
. $(dirname "$0")/helper-function.sh

sudo apt-get update

if [ -z  "$(apt -qq list build-essential)" ]; then
    sudo apt-get install -yqq  build-essential
fi

if [ -z  "$(apt -qq list ca-certificates)" ]; then
    sudo apt-get install -yqq ca-certificates
fi

if [ -z  "$(apt -qq list apt-utils)" ]; then
    sudo apt-get install -yqq apt-utils
fi

if [ -z  "$(apt -qq list apt-transport-https)" ]; then
    sudo apt-get install -yqq apt-transport-https
fi

if [ -z  "$(apt -qq list software-properties-common)" ]; then
    sudo apt-get install -yqq software-properties-common
fi

if [ -z  "$(apt -qq list openssh-server)" ]; then
    sudo apt-get install -yqq openssh-server
fi

if [ -z  "$(apt -qq list lm-sensors)" ]; then
    sudo apt-get install -yqq ls-sensors
fi

if [ -z  "$(apt -qq list net-tools)" ]; then
    sudo apt-get install -yqq net-tools
fi

if [ -z  "$(apt -qq list gnupg-agent)" ]; then
    sudo apt-get install -yqq gnupg-agent
fi

if [ -z  "$(apt -qq list gnupg2)" ]; then
    sudo apt-get install -yqq gnupg2
fi

if [ -z  "$(which autoconf)" ]; then
    sudo apt-get install -yqq autoconf
fi

if [ -z  "$(which nmap)" ]; then
    sudo apt-get install -yqq nmap
fi

if [ -z  "$(which nano)" ]; then
    sudo apt-get install -yqq nano
fi

if [ -z  "$(which gedit)" ]; then
    sudo apt-get install -yqq gedit
fi

if [ -z  "$(which file)" ]; then
    sudo apt-get install -yqq file
fi

if [ -z  "$(which unzip)" ]; then
    sudo apt-get install -yqq unzip
fi

if [ -z  "$(which htop)" ]; then
    sudo apt-get install -yqq htop
fi

if [ -z  "$(which tar)" ]; then
    sudo apt-get install -yqq tar
fi

if [ -z  "$(which dconf-editor)" ]; then
    sudo apt-get install -yqq dconf-editor
fi

if [ -z  "$(which dsniff)" ]; then
    sudo apt-get install -yqq dsniff
fi

sudo systemctl enable ssh
sudo systemctl start ssh

if [ -z  "$(which curl)" ]; then
    sudo apt-get install -yqq curl
    if [ "$(which curl)" ]; then
        banner "curl successfully installed"
    else
        banner "Something went wrong with curl installation"
    fi
else
    banner "curl already installed"
fi

if [ -z  "$(which pass)" ]; then
    sudo apt-get install -yqq pass
    if [ "$(which pass)" ]; then
        banner "pass successfully installed"
    else
        banner "Something went wrong with pass installation"
    fi
else
    banner "pass already installed"
fi

if [ -z  "$(which wget)" ]; then
    sudo apt-get install -yqq wget
    if [ "$(which wget)" ]; then
        banner "wget successfully installed"
    else
        banner "Something went wrong with wget installation"
    fi
else
    banner "wget already installed"
fi

if [ -z  "$(which git)" ]; then
    sudo apt-get install -yqq git || exit 1
    if [ "$(which git)" ]; then
        banner "git successfully installed"
    else
        banner "Something went wrong with git installation"
    fi
else
    banner "git already installed"
fi

if [ -z  "$(which terminator)" ]; then
    sudo apt-get install -yqq terminator
    if [ "$(which terminator)" ]; then
        banner "terminator successfully installed"
    else
        banner "Something went wrong with terminator installation"
    fi
else
    banner "terminator already installed"
fi

if [ -z  "$(which jq)" ]; then
    bash ./installers/install-jq.sh
fi

#tweak tools
if [ -z "$(which gnome-tweaks)" ]; then
    sudo add-apt-repository universe
    sudo apt install -y gnome-tweak-tool                                 
fi

# gparted
if [ -z "$(which gparted)" ]; then
    sudo apt-get install -yqq gparted
    if [ "$(which gparted)" ]; then
        banner "gparted successfully installed"
    else
        banner "Something went wrong with gparted installation"
    fi
else
    banner "gparted already installed"
fi

# Videoconference
## skype
if [ -z "$(which zoom-client)" ]; then
    sudo snap install zoom-client
    if [ "$(which zoom-client)" ]; then
        banner "zoom-client successfully installed"
    else
        banner "Something went wrong with zoom-client installation"
    fi
else
    banner "zoom-client already installed"
fi

## zoom
if [ -z "$(which skype)" ]; then
    sudo snap install skype --classic
    if [ "$(which skype)" ]; then
        banner "skype successfully installed"
    else
        banner "Something went wrong with skype installation"
    fi
else
    banner "skype already installed"
fi

# Browsers
## chrome browser
if [ -z "$(which google-chrome)" ]; then
    bash ./installers/install-chrome.sh
    if [ "$(which google-chrome)" ]; then
        banner "google-chrome successfully installed"
    else
        banner "Something went wrong with google-chrome installation"
    fi
else
    banner "google-chrome already installed"
fi

## chrome tor-broser
if [ -z "$(which tor-browser)" ]; then
    bash ./installers/install-tor.sh
    if [ "$(which tor-browser)" ]; then
        banner "tor-browser successfully installed"
    else
        banner "Something went wrong with tor-browser installation"
    fi
else
    banner "tor-browser already installed"
fi