FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y vim-tiny mysql-server

RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN rm -rf /var/lib/mysql/*

ADD my.cnf /etc/mysql/conf.d/docker.cnf
RUN chmod 664 /etc/mysql/conf.d/docker.cnf
ADD start_mysqld.sh /opt/start_mysqld.sh
RUN chmod +x /opt/start_mysqld.sh

VOLUME ["/var/lib/mysql", "/var/log/mysql"]

EXPOSE 3306

CMD ["/opt/start_mysqld.sh"]
