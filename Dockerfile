FROM eduardoshanahan/alpine:3.6.0

MAINTAINER Eduardo Shanahan <contact@eduardoshanahan.com>

RUN apk --update \
    add --no-cache python

ENTRYPOINT ["/bin/sh"]
