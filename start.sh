#!/bin/bash

TAG="simple-test-env"

mkdir -pv shared

docker build \
    --tag ${TAG} \
    --no-cache \
    .

docker run \
    --tty \
    --interactive \
    --rm \
    --volume "$(pwd)/shared:/usr/src/files/shared" \
    ${TAG}

docker rmi ${TAG}
