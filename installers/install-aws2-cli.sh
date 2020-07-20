#!/bin/bash
if [[ -z "$(which aws)" ]]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
    unzip /tmp/awscliv2.zip
    sudo /tmp/aws/install --update
    sudo rm /tmp/awscliv2.zip
    echo "------------> awscliv1.zip deleted succesfully"
    sudo rm -r /tmp/aws    
    echo -ne "\n------------> aws installed succesfully\n\n"

fi