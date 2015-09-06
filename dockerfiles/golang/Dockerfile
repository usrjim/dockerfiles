FROM usrjim

RUN apt-get update && apt-get install -y ca-certificates curl git-core

RUN curl -s https://storage.googleapis.com/golang/go1.5.linux-amd64.tar.gz | tar -v -C /usr/local -xz

ENV GOPATH /data
ENV GOROOT /usr/local/go
ENV PATH $PATH:/usr/local/go/bin:/go/bin

VOLUME ["/data"]

WORKDIR /data

