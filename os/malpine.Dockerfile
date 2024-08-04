ARG ALPINE_VERSION=3.20.2
FROM alpine:${ALPINE_VERSION} AS os

LABEL authors="Mahendra Prajapati"
LABEL STAGE="OS Builder"

RUN apk add --no-cache curl ca-certificates gnupg openssl libcap su-exec dumb-init tzdata