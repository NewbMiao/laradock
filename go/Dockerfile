FROM golang:1.9.0

MAINTAINER newbmiao <newbvirgil@gmail.com>

RUN apt-get -y update &&\
    apt-get install -y curl git mercurial make binutils bison gcc build-essential vim strace &&\
    apt-get clean && rm -rf /var/lib/apt/lists/*

#install gvm
RUN /bin/bash -c "bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)"
ARG GO_VERSION=go1.9
RUN ["/bin/bash", "-c", "source /root/.gvm/scripts/gvm && gvm use system && gvm install $GO_VERSION && gvm use $GO_VERSION --default"] 

RUN go get -u -v github.com/astaxie/beego && go get -u -v github.com/beego/bee && go get -u -v github.com/go-sql-driver/mysql
RUN go get -u -v github.com/FiloSottile/gvt
ENV ENV_TASK dev
EXPOSE 10100
VOLUME /go/src
WORKDIR /go/src
CMD ["bee","run","task/"]
