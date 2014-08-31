FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get update
RUN apt-get install -y rabbitmq-server
RUN rabbitmq-plugins enable rabbitmq_management

RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

EXPOSE 5672 15672
CMD ["rabbitmq-server"]
