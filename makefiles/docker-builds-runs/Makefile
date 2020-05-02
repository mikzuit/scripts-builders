# DIR variable expect folder for project
# DIR var should be set as argument of make like:
# "make docker-run-go-1.12 DIR=/home/mikz/Public/go-learning"

docker-build-node-12.4.0:
	docker build -t mikzuit/sys-node-12.4.0:1.0 -f dockerfiles/node-12.4.0/Dockerfile .

docker-run-node-12.4.0: check-dir
	docker run --name sys-node-12.4.0 -it -d -u ${(id -u)}:${(id -g)} --memory="1g" --cpus="2" -v $(DIR):/home/node/app -w /home/node/app mikzuit/sys-node-12.4.0:1.0 /bin/bash

docker-build-go-1.12:
	docker build -t mikzuit/sys-go-1.12:1.0 -f dockerfiles/go-1.12/Dockerfile .

docker-run-go-1.12: check-dir
	docker run --name sys-go-1.12 -it -e XDG_CACHE_HOME=/home/go/.cache -d -u ${(id -u)}:${(id -g)} --memory="1g" --cpus="2" -v $(DIR):/home/go -w /home/go mikzuit/sys-go-1.12:1.0

docker-exec-node-sys:
	docker exec -it --user=1000:1000 sys-node-12.4.0 "$@"

# Node sys builder
docker-build-node-sys:
	docker build -t sys-node https://github.com/mikzuit/scripts-builders.git#develop:dockerfiles/node-12.4.0 .
docker-exec-node-sys:
	docker exec -it --user=1000:1000 sys-node-12.4.0 "$@"
check-dir:
ifndef DIR
	$(error DIR ,of your project, should be defined)
endif#!/bin/bash

