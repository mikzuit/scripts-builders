# Introduction
How many of you make few clean installs of Ubuntu OS in a year? well, if you number is higher than 2 this is your tool. This scripts will work better when you have a clean Ubuntu 20.04 instalation. But anyway you can use each script individually.

# Use Very Carefully
This scripts contain `rm -f` command in some files and they could work on an unwanted way depending on your OS, be very carefull where to use them.

## Requirements
  - Ubuntu 20.04 (out of the box preferably but with the requirement below)
  - User with root privilegies  (added to visudo file /etc/sudoers or added a file to /etc/sudoers.d/your_username)
  - Security boot enabled (enabled by default) Otherwise this will just ask you to enable Security Boot in a Mok screen) when reach virtualbox installation.

# scripts-builders
Bunch of Makefiles, Bash files, Dockerfiles, Compose, yaml and script to bundle install programs or run tasks.

# Use Scripts from repo
This scripts are optimized for latest LTS Ubuntu release (20.04) when this line was updated. Mostly latest stable version of programs will be installed.

You can use this scripts directly from github like:

e.g. (this example build a Rust Project)
`wget -O - https://raw.githubusercontent.com/mikzuit/scripts-builders/develop/bashes/rust-project/create-rust-cargo-project.sh | bash` 

e.g (this example will install the package code and code-insiders )
`wget -O - https://raw.githubusercontent.com/mikzuit/scripts-builders/develop/installers/install-vscodes.sh | bash`

Or you can use them directly after downloaded from git repo to you ubuntu machine

e.g (this will install all programs in `all` target):

being in the project root path execute: 
`make -f makefiles/programs-list/Makefile all`
or being in the programs-list folder: (`cd makefiles/programs-list`)
`make`

e.g (this will install developers target)

being in the project root path execute: 
`make -f makefiles/programs-list/Makefile developers`
or being in the programs-list folder: (`cd makefiles/programs-list`)
`make developers`

e.g (this will install developers target)

being in the project root path execute: 
`make -f makefiles/programs-list/Makefile developers`
or being in the programs-list folder: (`cd makefiles/programs-list`)
`make developers`

(Need update) 
  If you are a regular user you might want to use:
    `i_am_a_regular_user`
  that will include:
    - git
    - curl
    - wget
    - terminator
    - jq
    - gparted
    - gnome-teaks
    - pass
    - nano
    - unzip
    - gedit
    - google-chrome
    - tor
    - vlc
    - leocad
    - transmission
    - easytag
    - gimp
    - inkscape
    - blender
    - kdenlive

    - clamav
    - clamav-daemon
    - clamtkcl
    - lynis
    - libpam-cracklib

  If you are a developer you might want to use :
    `i_am_a_developer_user`
  that will include:
    - docker (will also add your user to docker group)
    - docker-compose
    - docker-machine
    - psotman
    - vscode
    - code-insiders
    - gitloglive
    - vagrant
    - virtualbox

  If you are a devops you might want to use:
    `i_am_a_devops_user`
  that will include:
    - all packages for developers
    - ansible
    - aws
    - terraform
    - ibmcloudsdk
    - azure
    - gcloudsdk
    - helm
    - minikube
    - kubectl
(Need update) Also you can build or create a binary executable file out of a dockerfile with:
`make -f makefiles/docker-builds-runs/Makefile docker-build-node-sys`