#!/bin/bash

if [[ -z "$(which google-chrome)" ]]; then

    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp

    sudo apt-get install /tmp/google-chrome-stable_current_amd64.deb

    sudo rm /tmp/google-chrome-stable_current_amd64.deb
fi