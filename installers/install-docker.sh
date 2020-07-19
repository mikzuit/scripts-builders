#!/bin/bash

if [[ -z "$(which docker)" ]]; then

    # curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    # sudo apt-key fingerprint 0EBFCD88

    # sudo add-apt-repository "deb [arch=arm64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

    # sudo apt-get update
    # sudo apt-get install -y docker-ce docker-ce-cli containerd.io

    # repos is not working for ubuntu 20.04 even is publish in docker website, use this temporalily
    sudo apt-get install -y docker.io
fi