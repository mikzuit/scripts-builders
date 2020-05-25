#!/bin/bash

# jq -> json parser for terminal
git clone https://github.com/stedolan/jq.git

cd jq

autoreconf -i

./configure --disable-maintainer-mode

make

sudo make isntall