#!/bin/bash
if [[ -z "$(which helm)" ]]; then
    curl https://helm.baltorepo.com/organization/signing.asc | sudo apt-key add -
    sudo apt-get -yqq install apt-transport-https
    echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
    sudo apt-get update
    sudo apt-get install -yqq helm
    echo "\n------------> helm installed succesfully\n"
fi