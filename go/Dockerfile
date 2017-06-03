FROM golang:1.8.3

RUN go get -v github.com/astaxie/beego && go get -v github.com/beego/bee

RUN go get github.com/go-sql-driver/mysql
EXPOSE 10100

VOLUME /go/src/task

WORKDIR /go/src/task
USER root
# ARG JENKINS_GID=1000
# RUN groupadd -g ${JENKINS_GID} jenkins && addgroup root jenkins && usermod -aG jenkins root
CMD ["bee","run"]