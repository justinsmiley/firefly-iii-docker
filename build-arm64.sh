#!/usr/bin/env bash

# build image
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

echo "Build master ARM64"

docker build --tag jc5x/firefly-iii-base-image:latest-arm64 --file Dockerfile.arm64 .
docker push jc5x/firefly-iii-base-image:latest-arm64
