# scripts-builders
Bunch of Makefiles, Bash files, Dockerfiles, Compose, yaml and script to bundle install programs or run tasks.

# Use Very Carefully
This scripts contain `rm -f` command in some files and they could work on an unwanted way depending on your OS, be very carefull where to use them.

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
  If you are a developer you might want to use :
  ...
  that will include:

  If you are a devops you might want to use:
  ...
  that will include:

(Need update) Also you can build or create a binary executable file out of a dockerfile with:
`make -f makefiles/docker-builds-runs/Makefile docker-build-node-sys`