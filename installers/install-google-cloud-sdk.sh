#!/bin/bash
if [ -z "$(which gcloud)" ]; then
    # Add the Cloud SDK distribution URI as a package source
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

    # Import the Google Cloud Platform public key
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

    # Update the package list and install the Cloud SDK
    sudo apt-get update
    
    # at july 29 this issue https://github.com/GoogleCloudPlatform/github-actions/issues/128 would let gcloud with an authentication error on ubuntu 20.04
    # sudo apt-get install -yqq google-cloud-sdk
    
    # meanwhile will user 297.0.1-0 to avoid this error
    sudo apt install -y google-cloud-sdk=297.0.1-0

    # you can install google-cloud-sdk=306.0.0 or latest and fix with workaround in:
    # https://github.com/GoogleCloudPlatform/github-actions/issues/128
fi

