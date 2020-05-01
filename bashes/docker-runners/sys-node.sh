#!/bin/bash
# docker run --name sys-node  sysnode-12.4.0
docker run -it -u $(id -u):$(id -g) -v "$PWD":/home/$(id -g)/app -w /home/$(id -g)/app node:12.4.0 npm init