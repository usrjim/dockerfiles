FROM usrjim/jdk7
MAINTAINER Jim Cheung <usr.jim@gmail.com>

RUN apt-get install -y wget

WORKDIR /tmp
RUN wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.3.2.tar.gz && \
    tar xvzf elasticsearch-1.3.2.tar.gz && \
    mv elasticsearch-1.3.2 /elasticsearch

ADD build/elasticsearch.yml /elasticsearch/config/elasticsearch.yml

EXPOSE 9200 9300

VOLUME ["/data"]

WORKDIR /data
CMD ["/elasticsearch/bin/elasticsearch"]

