#!/usr/bin/env bash

# build image
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

echo "Build master amd64"

docker build --tag jc5x/firefly-iii-base-image:latest-amd64 --file Dockerfile .
docker push jc5x/firefly-iii-base-image:latest-amd64
