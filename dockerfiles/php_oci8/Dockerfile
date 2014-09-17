FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y vim unzip libaio1 \
    php5-cli php5-dev php5-memcached php5-mongo php5-curl php5-gd \
    php5-mcrypt php5-mysql php5-sqlite php5-xmlrpc 

ADD build/instantclient-sdk-linux.x64-12.1.0.2.0.zip /tmp/
ADD build/instantclient-basiclite-linux.x64-12.1.0.2.0.zip /tmp/

WORKDIR /usr/local/src/
RUN unzip /tmp/instantclient-sdk-linux.x64-12.1.0.2.0.zip && \
    unzip /tmp/instantclient-basiclite-linux.x64-12.1.0.2.0.zip

WORKDIR /usr/local/src/instantclient_12_1/
RUN ln -s libclntsh.so.12.1 libclntsh.so && \
    ln -s libocci.so.12.1 libocci.so

RUN printf "instantclient,/usr/local/src/instantclient_12_1" | pecl install oci8

ADD build/99-docker.ini /etc/php5/cli/conf.d/

RUN apt-get clean && rm -f /tmp/*.*

VOLUME ["/data"]

WORKDIR /data

