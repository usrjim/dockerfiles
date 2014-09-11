FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y mongodb-server

RUN mkdir -p /data/db

VOLUME ["/data/db"]

EXPOSE 27017
EXPOSE 28017

CMD ["/usr/bin/mongod", "--rest"]

