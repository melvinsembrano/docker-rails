#!/bin/bash

# build.sh $version

docker build -f ${1}/Dockerfile.base -t melvinsembrano/rails:${1}-base $1/
set -ex
docker build -f ${1}/Dockerfile.dev -t melvinsembrano/rails:${1}-dev --build-arg BASE_VERSION=${1} $1/

# docker push melvinsembrano/rails:${1}-base