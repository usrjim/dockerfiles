FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y git php5-cli php5-dev \
        php5-mcrypt php5-xdebug php-invoker php5-mongo php5-curl \
        php5-mysql php5-memcached php5-gd

RUN pecl install xhprof-beta
ADD build/99-xhprof.ini /etc/php5/cli/conf.d/99-xhprof.ini

RUN mkdir /var/www

WORKDIR /var/www
RUN git clone https://github.com/perftools/xhgui.git

WORKDIR /var/www/xhgui
RUN php install.php

ADD build/start.sh /opt/start.sh
RUN chmod +x /opt/start.sh

VOLUME ["/www", "/var/www/xhgui/config"]

EXPOSE 80
EXPOSE 8080

CMD ["/opt/start.sh"]

