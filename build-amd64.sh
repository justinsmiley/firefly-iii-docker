#!/usr/bin/env bash

echo "Build master amd64"

echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

docker build --tag jc5x/firefly-iii-base-image:latest-amd64 --file Dockerfile.amd64 .
docker push jc5x/firefly-iii-base-image:latest-amd64
