FROM alpine:3.4
MAINTAINER Chris Weyl <cweyl@alumni.drew.edu>

RUN apk update && \
    apk add radvd && \
    rm -r /var/cache/

ENTRYPOINT [ "radvd", "--nodaemon", "-p", "/radvd.pid" ]
