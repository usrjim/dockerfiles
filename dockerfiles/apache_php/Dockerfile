FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y apache2 libapache2-mod-php5 php5-memcached php5-curl php5-gd php5-mcrypt php5-mysql

RUN sed -i 's/memory_limit = 128M/memory_limit = 256M/g' /etc/php5/apache2/php.ini && \
    sed -i 's/;date.timezone =/date.timezone = "Asia\/Hong_Kong"/g' /etc/php5/apache2/php.ini && \
    sed -i 's/display_errors = Off/display_errors = On/g' /etc/php5/apache2/php.ini && \
    sed -i 's/display_startup_errors = Off/display_startup_errors = On/g' /etc/php5/apache2/php.ini && \
    sed -i 's/;mbstring.http_input =/mbstring.http_input = pass/g' /etc/php5/apache2/php.ini && \
    sed -i 's/;mbstring.http_output =/mbstring.http_output = pass/g' /etc/php5/apache2/php.ini

ADD apache.conf /etc/apache2/sites-available/docker.conf
RUN a2enmod rewrite && \
    a2dissite 000-default && \
    a2ensite docker

VOLUME ["/www", "/var/log/apache2"]
EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]

