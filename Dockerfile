FROM golang:1.22 AS builder

WORKDIR /app

COPY main.go .

RUN go build -o /go-fargate-batch main.go

FROM alpine:latest

COPY --from=builder /go-fargate-batch /go-fargate-batch

ENTRYPOINT ["/go-fargate-batch"]
