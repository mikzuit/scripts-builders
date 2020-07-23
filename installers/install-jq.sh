# jq -> json parser for terminal
if [ -z  "$(which jq)" ]; then
    # cd /tmp
    # git clone https://github.com/stedolan/jq.git
    # cd jq
    # autoreconf -i
    # ./configure --disable-maintainer-mode
    # make
    # sudo make install
    # cd /tmp
    # sudo rm -R ./jq
    sudo apt-get install -y jq
fi