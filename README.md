# docker-node-build-env
Docker Image for [Node.js](https://github.com/nodejs/node) Build Environment

## Usage

Here is how to build Node.js on a container.

```bash
cd <this repo>
git clone git@github.com:nodejs/node.git
docker run -it -v $PWD/node:/build/node nwtgck/node-build-env
(in container)# cd /build/node
(in container)# ./configure
(in container)# make -j2 V=
```

## Build a image manually

```bash
docker build -t node-build-env .
```
