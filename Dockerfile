FROM golang:1.11.1
ENV GOPATH="/go"
RUN ["mkdir", "-p", "/go/src/github.com/danbruder/go-rio"]
COPY * /go/src/github.com/danbruder/go-rio
WORKDIR /go/src/github.com/danbruder/go-rio
RUN ["go", "build", "-o", "go-rio"]
CMD ["./go-rio"]
