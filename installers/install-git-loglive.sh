#!/bin/bash

cat << 'EOF' > ./git-loglive.sh 
#!/bin/bash

while :
do
    clear
    git --no-pager log --graph --pretty=oneline --abbrev-commit --decorate --all $*
    sleep 1
done
EOF

chmod +x ./git-loglive.sh

sudo chown root:root ./git-loglive.sh

sudo mv ./git-loglive.sh /usr/local/bin/ || exit 1