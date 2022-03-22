ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}
RUN apk -U upgrade && apk add --no-cache \
    hping3 --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["hping"]
