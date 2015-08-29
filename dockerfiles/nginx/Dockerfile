FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

VOLUME ["/etc/nginx/sites-enabled", "/var/log/nginx", "/etc/nginx/ssl"]

EXPOSE 80 443

CMD ["nginx"]
