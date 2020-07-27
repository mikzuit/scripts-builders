if [ -z "$(which httpd)" ]; then
    sudo apt install -y apache2
    sudo systemctl enabled apache2.service
    # open ports
    sudo ufw allow 80/tcp comment 'accept Apache'
    sudo ufw allow 443/tcp comment 'accept HTTPS connections'
fi