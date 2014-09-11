FROM usrjim
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y memcached

EXPOSE 11211

CMD ["memcached", "-u", "root", "-p", "11211", "-m", "128"]
