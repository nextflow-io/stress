FROM debian:wheezy
MAINTAINER Paolo Di Tommaso

RUN apt-get update --fix-missing\
 && apt-get install -y procps stress\
 && apt-get clean

COPY *.pl /usr/local/bin/