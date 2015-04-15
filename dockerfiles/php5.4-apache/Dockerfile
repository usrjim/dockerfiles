from php:5.4-apache

RUN apt-get update && apt-get install -y libmemcached-dev libpng12-dev
RUN docker-php-ext-install pdo_mysql gd
RUN pecl install -f memcached apcu xdebug

ADD php-docker.ini /usr/local/etc/php/conf.d/docker.ini
ADD apache-docker.conf /etc/apache2/sites-available/docker.conf
RUN a2enmod rewrite && \
    a2dissite 000-default && \
    a2ensite docker

WORKDIR /www
VOLUME ["/www", "/var/log/apache2"]
EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
