# syntax=docker/dockerfile:1

FROM golang:1.20-alpine AS builder
WORKDIR /src/
COPY go.mod go.sum main.go ./
RUN apk -U add binutils && CGO_ENABLED=0 go build -o prometheus-logstash-exporter && strip prometheus-logstash-exporter

FROM alpine
WORKDIR /
COPY --from=builder /src/prometheus-logstash-exporter /
EXPOSE 9304
ENTRYPOINT ["/prometheus-logstash-exporter"]