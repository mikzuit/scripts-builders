#!/bin/bash
if [[ -z "$(which ibmcloud)" ]]; then
    curl -sL https://ibm.biz/idt-installer | bash || exit 1

    echo "\n------------> ibm cloud installed succesfully\"
fi