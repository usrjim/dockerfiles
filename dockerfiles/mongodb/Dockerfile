FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && \
    apt-get install -y vim-tiny mongodb-server

RUN mkdir -p /data/db

VOLUME ["/data/db"]

EXPOSE 27017
EXPOSE 28017

CMD ["/usr/bin/mongod", "--rest"]

