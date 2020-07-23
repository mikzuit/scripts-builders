#!/bin/bash
if [[ -z "$(which aws)" ]]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
    unzip -o /tmp/awscliv2.zip -d /tmp
    sudo /tmp/aws/install --update
    sudo rm /tmp/awscliv2.zip
    sudo rm -r /tmp/aws    
fi