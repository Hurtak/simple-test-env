#!/bin/bash

cd "$(dirname "$0")"

DIR_HOST="$(pwd)"
DIR_CONTAINER="/usr/src"
DIR_NAME_SHARED="shared"

IMAGE="${1:-debian}"
COMMAND="${2}"

mkdir -p "${DIR_NAME_SHARED}"

sudo docker run \
    --tty \
    --interactive \
    --rm \
    --publish 127.0.0.1:8080:8080 \
    --workdir "${DIR_CONTAINER}/${DIR_NAME_SHARED}" \
    --volume "${DIR_HOST}/${DIR_NAME_SHARED}:${DIR_CONTAINER}/${DIR_NAME_SHARED}" \
    "${IMAGE}" ${COMMAND}
