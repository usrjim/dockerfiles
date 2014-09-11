FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y rabbitmq-server
RUN rabbitmq-plugins enable rabbitmq_management

EXPOSE 5672 15672
CMD ["rabbitmq-server"]
