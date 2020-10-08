# (base: https://github.com/nodejs/node/blob/1ae0511b942c01c6e0adff98643d350a395bf101/.travis.yml)

FROM ubuntu:16.04

LABEL maintainer="Ryo Ota <nwtgck@nwtgck.org>"

ENV CC='ccache gcc-4.9'
ENV CXX='ccache g++-4.9'
ENV JOBS=2

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:ubuntu-toolchain-r/test && \
    apt update && \
    apt install -y \
      g++-4.9 \
      python \
      ccache \
      build-essential && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
