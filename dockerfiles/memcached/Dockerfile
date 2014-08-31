FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get update
RUN apt-get install -y memcached

RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

EXPOSE 11211

CMD ["memcached", "-u", "root", "-p", "11211", "-m", "128"]
