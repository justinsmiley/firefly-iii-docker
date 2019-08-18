#!/usr/bin/env bash

# build image
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

echo "Build master amd64"
docker build -t jc5x/firefly-iii-base:test -f Dockerfile .
docker push jc5x/firefly-iii-base:test
