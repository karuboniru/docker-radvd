FROM alpine:latest
MAINTAINER Qiyu Yan <nico@niconi.org>

RUN apk update && \
    apk add radvd && \
    rm -r /var/cache/

ENTRYPOINT [ "radvd", "--nodaemon", "-p", "/radvd.pid" ]
