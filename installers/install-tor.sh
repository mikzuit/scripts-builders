#!/bin/bash

## tor browser
if [ -z "$(which tor)" ]; then
    #sudo apt-get install -y torbrowser-launcher

    TORVERSION="11.5.2"

    wget https://www.torproject.org/dist/torbrowser/${TORVERSION}/tor-browser-linux64-${TORVERSION}_en-US.tar.xz -P /tmp
    
    wget https://www.torproject.org/dist/torbrowser/${TORVERSION}/tor-browser-linux64-${TORVERSION}_en-US.tar.xz.asc -P /tmp

    gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org

    gpg --output /tmp/tor.keyring --export 0xEF6E286DDA85EA2A4BA7DE684E2C6E8793298290

    gpgv --keyring /tmp/tor.keyring /tmp/tor-browser-linux64-${TORVERSION}_en-US.tar.xz.asc /tmp/tor-browser-linux64-${TORVERSION}_en-US.tar.xz

    tar -xf /tmp/tor-browser-linux64-${TORVERSION}_en-US.tar.xz -C /tmp

    chmod +x /tmp/tor-browser_en-US/start-tor-browser.desktop
    chmod go+rx /tmp/tor-browser_en-US/start-tor-browser.desktop
    chmod go+rx -R /tmp/tor-browser_en-US/Browser

    sudo mkdir -p /opt/torbrowser
    sudo cp -R /tmp/tor-browser_en-US/Browser /opt/torbrowser
    sudo cp -R /tmp/tor-browser_en-US/start-tor-browser.desktop /opt/torbrowser

    sudo chown root:root /opt/torbrowser/start-tor-browser.desktop
    sudo chown -R 1000:1000 /opt/torbrowser/Browser

    rm /tmp/tor.keyring
    rm /tmp/tor-browser-linux64-${TORVERSION}_en-US.tar.xz.asc
    rm /tmp/tor-browser-linux64-${TORVERSION}_en-US.tar.xz
    rm -R /tmp/tor-browser_en-US/Browser
    rm /tmp/tor-browser_en-US/start-tor-browser.desktop
    rm -R /tmp/tor-browser_en-US
fi