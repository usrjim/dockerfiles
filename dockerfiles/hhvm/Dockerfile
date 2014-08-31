FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN echo "Asia/Hong_Kong" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update
RUN apt-get install -y vim-tiny wget nginx

RUN wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | apt-key add -
RUN echo deb http://dl.hhvm.com/debian jessie main | tee /etc/apt/sources.list.d/hhvm.list
RUN apt-get update
RUN apt-get -y install hhvm libzip-dev

# fixing hhvm jessie problem, 20140815
RUN ln -s /usr/lib/libbfd-2.24.51-system.20140727.so /usr/lib/libbfd-2.24.51-system.20140617.so

RUN /usr/share/hhvm/install_fastcgi.sh

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

ADD start_hhvm.sh /opt/start_hhvm.sh
RUN chmod +x /opt/start_hhvm.sh

VOLUME ["/www", "/etc/nginx/sites-enabled", "/var/log/nginx"]

EXPOSE 80

CMD ["/opt/start_hhvm.sh"]
