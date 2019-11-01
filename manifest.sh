#!/usr/bin/env bash

TARGET=jc5x/firefly-iii-base-image:latest
IMAGE=jc5x/firefly-iii-base-image:latest-$ARCH

#ARM=jc5x/firefly-iii-base-image:latest-arm
#AMD=jc5x/firefly-iii-base-image:latest-amd64

docker manifest create --amend $TARGET $IMAGE
docker manifest annotate $TARGET $IMAGE --arch $ARCH   --os linux
docker manifest push $TARGET

# download manifest from docker hub for this version, or create one if it doesn't exist.
# append the current target
# push to repository.