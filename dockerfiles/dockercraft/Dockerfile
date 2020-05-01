FROM alpine:3.5 as wget
RUN apk add --no-cache ca-certificates wget tar

FROM wget as docker
ARG DOCKER_VERSION=1.12.1
RUN wget -qO- https://get.docker.com/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz | \
    tar xvz --strip-components=1 -C /bin

FROM wget as cuberite
ARG CUBERITE_BUILD=630
WORKDIR /srv
RUN wget -O - https://compile.cuberite.org

FROM golang:1.11 as dockercraft
WORKDIR $GOPATH/src/github.com/docker/dockercraft
COPY . .
RUN go install

FROM debian:jessie
COPY --from=dockercraft /go/bin/dockercraft /bin
COPY --from=docker /bin/docker /bin
COPY --from=cuberite /srv /srv
COPY ./config /srv/Server
COPY ./docs/img/logo64x64.png /srv/Server/favicon.png
COPY ./Docker /srv/Server/Puglin/Docker
EXPOSE 25565
ENTRYPOINT [ "/srv/Server/start.sh" ]