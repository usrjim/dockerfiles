FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y nodejs

VOLUME ["/www"]

EXPOSE 3000

WORKDIR /www
CMD ["nodejs", "app.js"]
