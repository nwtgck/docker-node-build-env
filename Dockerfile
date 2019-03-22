# (base: https://github.com/nodejs/node/blob/1ae0511b942c01c6e0adff98643d350a395bf101/.travis.yml)

FROM ubuntu:16.04

LABEL maintainer="Ryo Ota <nwtgck@gmail.com>"

ENV CC='ccache gcc-4.9'
ENV CXX='ccache g++-4.9'
ENV JOBS=2

# (TODO: Make them ono-line RUN)
# (TODO: Remove cahces)
RUN apt update
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:ubuntu-toolchain-r/test
RUN apt update
RUN apt install -y g++-4.9 python ccache
RUN apt install -y build-essential
