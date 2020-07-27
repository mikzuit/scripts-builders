# libpam_cracklib password security
sudo apt-get install -y libpam-cracklib
sed -i.bak '{s/password[[:space:]]\+requisite[[:space:]]\+pam_cracklib.so retry=3 minlen=8 difok=3/password        requisite       pam_cracklib.so retry=3 minlen=16 difok=3 ucredit=-1 lcredit=-2 dcredit=-2 ocredit=-2/g}' /etc/pam.d/common-password

# clamv virus scanner
sudo apt-get install -y clamav clamav-daemon
# stop service
sudo systemctl stop clamav-freshclam
# update your signatures
sudo freshclam
# ui interface 
sudo apt-get install -y clamtkcl
# start service
sudo systemctl start clamav-freshclam

# lynis security auditing toolkit
if [ -z "$(which lynis)" ]; then
    wget https://downloads.cisofy.com/lynis/lynis-3.0.0.tar.gz -P /tmp
    cd /tmp
    tar xvzf lynis-3.0.0.tar.gz
    sudo mv lynis /usr/local/
    sudo ln -s /usr/local/lynis/lynis /usr/local/bin/lynis
    rm /tmp/lynis-3.0.0.tar.gz
fi