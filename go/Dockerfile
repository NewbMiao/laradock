FROM golang:1.9.0

RUN go get -u -v github.com/astaxie/beego && go get -u -v github.com/beego/bee && go get -u -v github.com/go-sql-driver/mysql
EXPOSE 10100

VOLUME /go/src/task
WORKDIR /go/src/task
#CMD ["bee","run"]
CMD ["/bin/bash"]
