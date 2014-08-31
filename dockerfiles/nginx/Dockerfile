FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get update
RUN apt-get install -y vim-tiny nginx

RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/sites-enabled", "/var/log/nginx"]

EXPOSE 80

CMD ["nginx"]
