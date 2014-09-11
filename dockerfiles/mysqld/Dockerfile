FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server

ADD my.cnf /etc/mysql/conf.d/docker.cnf
ADD start_mysqld.sh /opt/start_mysqld.sh

RUN chmod 664 /etc/mysql/conf.d/docker.cnf && \
    chmod +x /opt/start_mysqld.sh && \
    rm -rf /var/lib/mysql/*

VOLUME ["/var/lib/mysql", "/var/log/mysql"]

EXPOSE 3306

CMD ["/opt/start_mysqld.sh"]
