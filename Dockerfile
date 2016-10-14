FROM alpine:3.4

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk update \
&& apk add python

ENTRYPOINT /bin/sh
