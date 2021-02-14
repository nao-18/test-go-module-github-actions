FROM golang:1.16rc1-buster
WORKDIR /go/src
ENV GO111MODULE=on
EXPOSE 8080
CMD ["go", "run", "/go/src/main.go"]