FROM node:12.4.0-slim

LABEL author="MikZuit <https://github.com/mikzuit>"
LABEL author-site="https://mikzuit.com"
LABEL version=1.1

USER node

RUN mkdir ~/.npm-global && chown -R node:node /home/node/.npm-global
RUN npm config set prefix ~/.npm-global
RUN export PATH=~/.npm-global/bin:${PATH}
RUN echo 'source ~/.profile'

ENV NODE_ENV=development
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global 
ENV PATH=/home/node/.npm-global/bin:${PATH}


RUN mkdir -p /home/node/app
RUN echo "-m 300M"
RUN echo "--memory-swap 1G"

WORKDIR /usr/src/app

RUN npm install -g yarn
RUN npm install -g nodemon
RUN npm install -g yo
RUN npm install -g jshint
RUN npm install -g eslint
RUN npm install -g create-react-app
RUN npm install -g generator-nodeserver
RUN npm install -g express-generator
RUN npm install -g express-app-generator
