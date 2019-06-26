FROM golang:1.11.0
ADD . .
RUN go build -o main .
CMD ["/app/main"]
