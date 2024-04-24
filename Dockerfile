FROM golang:1.22 AS builder
WORKDIR /go/src/github.com/missuo/FreeDuckDuckGo
COPY main.go ./
COPY go.mod ./
COPY go.sum ./
RUN go get -d -v ./
RUN CGO_ENABLED=0 go build -a -installsuffix cgo -o FreeDuckDuckGo .

FROM alpine:latest
WORKDIR /app
COPY --from=builder /go/src/github.com/missuo/FreeDuckDuckGo/FreeDuckDuckGo /app/FreeDuckDuckGo
CMD ["/app/FreeDuckDuckGo"]