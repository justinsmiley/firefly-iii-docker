#!/usr/bin/env bash

# build image
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

echo "Build master amd64"
docker build -t jc5x/firefly-iii-base-image:test -f Dockerfile .
docker push jc5x/firefly-iii-base-image:test
docker images jc5x/firefly-iii-base-image:test
echo "Done!"
