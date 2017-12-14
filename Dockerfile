FROM eduardoshanahan/alpine:3.6.0.3

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN apk add python

ENTRYPOINT ["/bin/sh"]
