# Dockerfile used to build our wetopi/node apps

# Pull base image from an official repo
FROM node:0.10.36-slim

MAINTAINER joan <joan@wetopi.com>

# Install forever
RUN \
  npm install forever -g


EXPOSE 3001

VOLUME ["/usr/src/app"]

WORKDIR /usr/src/app

# Remember the env:
# lets read development configs
# ENV NODE_ENV development
# lets node show us all debug info
# ENV DEBUG *

CMD [ "npm", "start" ]