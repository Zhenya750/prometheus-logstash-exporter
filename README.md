Logstash exporter
=================

Prometheus exporter for metrics provided by Node Stats API of Logstash.

## Build from source
```shell
$ git clone <repo-url>
$ cd /prometheus-logstash-exporter
$ git checkout <tag>
$ GOOS=<your OS> GOARCH=<your ARCH> go build -o prometheus-logstash-exporter main.go

```
Show help:
```shell
$ prometheus-logstash-exporter --help
```

## Config parameters
| Parameter            | ENV Parameter        | Default value | Description                                          |
|:--------------------:|:--------------------:|:-------------:|:-----------------------------------------------------|
| `web-listen-address` | `WEB_LISTEN_ADDRESS` | :9304         | Address to listen on for web interface and telemetry |
| `web-telemetry-path` | `WEB_TELEMETRY_PATH` | /metrics      | Path under which to expose metrics                   |
| `logstash-host`      | `LOGSTASH_HOST`      | localhost     | Host address of logstash server                      |
| `logstash-port`      | `LOGSTASH_PORT`      | 9600          | Port of logstash server                              |
| `logstash-timeout`   | `LOGSTASH_TIMEOUT`   | 5*time.Second | Timeout to get stats from logstash server            |

## Running
```shell
$ prometheus-logstash-exporter
```