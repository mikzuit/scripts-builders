#!/bin/bash
if [ "$(command -v nvm)" != 'nvm' ]; then 
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
fi