FROM eduardoshanahan/alpine:latest

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk --update \
    add --no-cache python

ENTRYPOINT ["/bin/sh"]
