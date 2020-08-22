FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get -y install tzdata
RUN apt-get -y install build-essential git libpcre3-dev

WORKDIR /root

RUN git clone https://github.com/status-im/nim-beacon-chain.git nbc

WORKDIR /root/nbc

RUN git checkout devel
RUN make update

