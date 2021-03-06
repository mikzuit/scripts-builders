#!/bin/bash
if [[ -z "$(which docker-machine)" ]]; then
    base=https://github.com/docker/machine/releases/download/v0.16.0 && \
    curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine && \
    sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
    chmod +x /usr/local/bin/docker-machine
    sudo chown root:root /usr/local/bin/docker-machine
    # For Windows visit:
    # https://docs.docker.com/machine/install-machine/
fi