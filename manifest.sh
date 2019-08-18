#!/usr/bin/env bash

TARGET=jc5x/firefly-iii-base-image:latest
ARM=jc5x/firefly-iii-base-image:latest-arm
AMD=jc5x/firefly-iii-base-image:latest-amd64

docker manifest create $TARGET $AMD $ARM
docker manifest annotate $TARGET $ARM --arch arm   --os linux
docker manifest annotate $TARGET $AMD --arch amd64 --os linux
docker manifest push $TARGET
