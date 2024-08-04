#!/usr/bin/env bash

# @author   Mahendra Prajapati
# @Since    04/08/24

set -e
SUPPORTED_PLATFORM="linux/arm64,linux/amd64"
OS_VERSION="1.0.0"
docker buildx build --platform="${SUPPORTED_PLATFORM}" -t pra0mahendra/malpine:"${OS_VERSION}" -t pra0mahendra/malpine -f malpine.Dockerfile --push .
docker buildx build --platform="${SUPPORTED_PLATFORM}" -t pra0mahendra/mubi:"${OS_VERSION}" -t pra0mahendra/mubi -f mubi.Dockerfile --push .
