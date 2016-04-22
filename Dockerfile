FROM ubuntu:14.04

MAINTAINER Paul Scott <pscott209@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget build-essential libwrap0-dev libssl-dev python-distutils-extra libc-ares-dev uuid-dev mosquitto mosquitto-clients 
RUN adduser --system --disabled-password --disabled-login mosquitto
USER mosquitto
EXPOSE 1883
CMD ["/usr/sbin/mosquitto"]
