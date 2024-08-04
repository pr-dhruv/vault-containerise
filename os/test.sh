#!/usr/bin/env bash

# @author   Mahendra Prajapati
# @Since    04/08/24

set -e

docker build --no-cache -f malpine.Dockerfile -t malpine:1.0.0 .
#docker run --rm --name test-malpine malpine:1.0.0 'env && openssl version && cat /etc/ssl/openssl.cnf'
#docker rmi malpine:1.0.0