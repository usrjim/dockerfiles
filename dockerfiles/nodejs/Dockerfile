FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get install -y nodejs npm
RUN npm install pm2 -g

VOLUME ["/www"]

EXPOSE 3000

WORKDIR /www
CMD ["pm2", "start", "app.js", "--no-daemon"]
