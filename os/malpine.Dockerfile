FROM alpine:3.20.2 AS os

LABEL authors="Mahendra Prajapati"
LABEL STAGE="OS Builder"

#COPY openssl.cnf /etc/ssl/openssl.cnf
COPY alpine/* /usr/local/bin/
ENV OS=linux

RUN sh /usr/local/bin/os-build.sh

#RUN set -eu; mkdir build && \
#    chmod +x /usr/local/bin/os-buildx.sh && \
#    sh /usr/local/bin/os-buildx.sh && \
#    cd build && curl -L "https://openssl.org/source/old/3.0/openssl-3.0.0.tar.gz" -o openssl-3.0.0.tar.gz && \
#    tar -xzf openssl-3.0.0.tar.gz && cd openssl-3.0.0 && ./config enable-fips shared --prefix=/usr/local/ssl --openssldir=/usr/local/ssl && make && make install && \
#    rm -rf /build && cp -l /usr/local/ssl/bin /usr/local/bin && \
#    apk del build-base make linux-headers perl