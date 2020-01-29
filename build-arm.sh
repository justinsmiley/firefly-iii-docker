#!/usr/bin/env bash

echo "Build master ARM"

docker run --rm --privileged multiarch/qemu-user-static:register --reset

# get qemu-arm-static binary
mkdir tmp
pushd tmp && \
curl -L -o qemu-arm-static.tar.gz https://github.com/multiarch/qemu-user-static/releases/download/v4.2.0-2/qemu-arm-static.tar.gz && \
tar xzf qemu-arm-static.tar.gz && \
popd

# build image
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build --tag jc5x/firefly-iii-base-image:latest-arm --file Dockerfile.arm .
docker push jc5x/firefly-iii-base-image:latest-arm
