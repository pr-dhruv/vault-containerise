ARG OS_VERSION=9.4
FROM registry.access.redhat.com/ubi9/ubi-minimal:${OS_VERSION} AS os

LABEL authors="Mahendra Prajapati"
LABEL STAGE="OS Builder"

RUN set -eux; \
    microdnf install -y ca-certificates gnupg openssl libcap tzdata procps shadow-utils util-linux