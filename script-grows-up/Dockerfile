FROM golang:1.18beta1-bullseye AS builder
WORKDIR $GOPATH/kubelite
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o /go/bin/main ./

FROM alpine:latest
WORKDIR /
COPY --from=builder /go/bin/main .
ENTRYPOINT ["./main"]
