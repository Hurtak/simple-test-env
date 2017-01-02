#!/bin/bash

docker build \
    --tag simple-test-env \
    --no-cache \
    .

docker run \
    --tty \
    --interactive \
    --rm \
    --volume "$(pwd)/shared:/usr/src/files/shared" \
    simple-test-env

docker rmi simple-test-env
