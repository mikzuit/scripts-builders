#!/bin/bash
if [[ -z "$(which aws)" ]]; then
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    unzip awscliv2.zip
    sudo ./aws/install --update
    sudo rm -r ./aws
fi