## Wetopi node Dockerfile


This repository contains **Dockerfile** with a base of node plus forever

### Base Docker Image

* [node:0.10.36-slim](https://registry.hub.docker.com/_/node/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/wetopi/node/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull wetopi/node`

   (alternatively, you can build an image from Dockerfile: `docker build -t="wetopi/node" github.com/wetopi/node`)


### Run npm start inside our container:

    docker run -d -p 3001:3001 wetopi/node


#### Running in development environment with forever

    docker run -d -p 3001:3001 -e NODE_ENV=development -v <my_app_dir>:/usr/src/app wetopi/node forever --watchDirectory=/usr/src/app -w server/server.js


##### Why forever
When Ghost starts with the help of forever https://www.npmjs.com/package/forever and its watchDirectory option.
Then we can develop on a shared volume and forever will watch for file changes.
