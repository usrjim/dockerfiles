FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y php5-fpm php5-mysqlnd php5-curl \
    php5-gd php5-memcached php5-json php5-readline

RUN echo "cgi.fix_pathinfo = 0" >> /etc/php5/fpm/php.ini && \
    sed -i 's/;daemonize = yes/daemonize = no/' /etc/php5/fpm/php-fpm.conf

EXPOSE 9000

CMD ["php5-fpm"]