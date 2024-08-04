#!/usr/bin/env bash

# @author   Mahendra Prajapati
# @Since    04/08/24

set -e

DOCKER_HUB_USER="pra0mahendra"
SUPPORTED_PLATFORM="linux/arm64,linux/amd64"
MALPINE_RELEASE_VERSION="1.0.0"
MUBI_RELEASE_VERSION="1.0.0"
docker buildx build --no-cache --platform="${SUPPORTED_PLATFORM}" -t ${DOCKER_HUB_USER}/malpine:"${MALPINE_RELEASE_VERSION}" -t pra0mahendra/malpine:latest -f malpine.Dockerfile --push .
#docker buildx build --platform="${SUPPORTED_PLATFORM}" -t ${DOCKER_HUB_USER}/mubi:"${MUBI_RELEASE_VERSION}" -t pra0mahendra/mubi:latest -f mubi.Dockerfile --push .
