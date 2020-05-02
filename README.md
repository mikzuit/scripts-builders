# scripts-builders
Bunch of Makefiles, Bash files, Dockerfiles, Compose, yaml and script to bundle install programs or run tasks.

# Use Very Carefully
This scripts contain `rm -f` command on some auto created files but they could work on an unwanted way depending on your OS, be very carefull where to use them.

# Use Scripts from repo
This scripts are optimized for latest LTS Ubuntu release (20.04) at last momment this line was updated.

You can you this scripts directly from github like:
`wget -O - https://raw.githubusercontent.com/mikzuit/scripts-builders/develop/bashes/rust-project/create-rust-cargo-project.sh | bash` #this example build a Rust Project

You can install all programs in `all` target in Makefile like: 
`make --makefile=makefiles/programs-list/Makefile all` so you would easily get this applications on your computer, execute the command above in the root path of this repo.

You can build or create a binary executable file out of a dockerfile with:
`make --makefile=makefiles/docker-builds-runs/Makefile docker-build-node-sys`