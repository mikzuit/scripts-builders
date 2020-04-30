#!/bin/bash

sudo apt update || exit 1
sudo apt install software-properties-common ||  exit 1
sudo apt-add-repository --yes --update ppa:ansible/ansible || exit 1
sudo apt install ansible || exit 1