FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get update && \
    apt-get install -y wget openssl

RUN wget -qO - http://nginx.org/keys/nginx_signing.key | apt-key add - && \
    gpg --keyserver keys.gnupg.net --recv-key ABF5BD827BD9BF62 && \
    gpg -a --export ABF5BD827BD9BF62 | apt-key add - && \
    echo "deb http://nginx.org/packages/mainline/debian/ jessie nginx" > /etc/apt/sources.list.d/nginx.list && \
    apt-get update && \
    apt-get install -y nginx && \
    apt-get clean

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/conf.d", "/var/log/nginx", "/etc/nginx/ssl"]

EXPOSE 80 443

CMD ["nginx"]
