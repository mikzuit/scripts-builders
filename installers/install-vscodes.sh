
# vscode && code-insiders
if [ -z "$(which code)" ]; then
    curl -sL https://packages.microsoft.com/keys/microsoft.asc |
        gpg --dearmor |
        sudo tee /etc/apt/trusted.gpg.d/microsoft.asc.gpg > /dev/null

    wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
    echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" |
        sudo tee /etc/apt/sources.list.d/vscode.list

    sudo apt-get update
    sudo apt-get install -y code code-insiders || exit 1
fi

if [ -z "$(which code-insiders)" ]; then
    sudo apt-get install -y code-insiders
fi