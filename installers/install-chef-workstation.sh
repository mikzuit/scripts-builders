#!/bin/bash

wget  https://packages.chef.io/files/stable/chef-workstation/0.2.43/ubuntu/18.04/chef-workstation_0.2.43-1_amd64.deb

sudo dpkg -i chef-workstation_*.deb

rm chef-workstation_*.deb