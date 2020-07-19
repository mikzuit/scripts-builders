# scripts-builders
Bunch of Makefiles, Bash files, Dockerfiles, Compose, yaml and script to bundle install programs or run tasks.

# Use Very Carefully
This scripts contain `rm -f` command in some files and they could work on an unwanted way depending on your OS, be very carefull where to use them.

# Use Scripts from repo
This scripts are optimized for latest LTS Ubuntu release (20.04) at last momment this line was updated.

You can you this scripts directly from github like:
`wget -O - https://raw.githubusercontent.com/mikzuit/scripts-builders/develop/bashes/rust-project/create-rust-cargo-project.sh | bash` #this example build a Rust Project

You can install all programs in `all` target in Makefile like: 
`make -f makefiles/programs-list/Makefile all` so you would easily ALL this applications on your computer, execute the command above in the root path of this repo.
  If you are a developer you might want to use :
  ...
  that will include:

  If you are a devops you might want to use:
  ...
  that will include:

You can build or create a binary executable file out of a dockerfile with:
`make -f makefiles/docker-builds-runs/Makefile docker-build-node-sys`