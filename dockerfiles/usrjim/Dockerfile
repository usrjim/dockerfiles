FROM debian:jessie
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN echo "Asia/Hong_Kong" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update && \
    apt-get install -y vim-tiny

CMD ["bash"]
