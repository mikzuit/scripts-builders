#!/bin/bash

## openvpn3
if [ -z "$(which openvpn3)" ]; then

    if [ -z "$(which openvpn3)" ]; then
        apt install apt-transport-https -yqq
    fi

    if [ -z "$(which curl)" ]; then
        apt install curl -yqq
    fi
    curl -fsSL https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub | gpg --dearmor > /etc/apt/trusted.gpg.d/openvpn-repo-pkg-keyring.gpg

    curl -fsSL https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-jammy.list >/etc/apt/sources.list.d/openvpn3.list

    apt update

    apt install openvpn3

fi