# docker-node-build-env
Docker Image for [Node.js](https://github.com/nodejs/node) Build Environment

## Build a image

```bash
docker build -t node-build-env .
```

## Usage

Here is how to build Node.js on a container.

```bash
cd <this repo>
git clone git@github.com:nodejs/node.git
docker run -it -v $PWD/node:/build/node node-build-env
(in container)# cd /build/node
(in container)# ./configure
(in container)# make -j2 V=
```
