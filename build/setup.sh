#!/usr/bin/env bash

# @author   Mahendra Prajapati
# @Since    04/08/24

set -e

buildXName="xplatform"

docker login
docker buildx create --use --name "${buildXName}"
docker buildx ls
#docker use "${buildXName}"


# Important command for buildx
#docker buildx rm "$buildXName"
