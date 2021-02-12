#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-voicepay/voiced-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/voiced docker/bin/
cp $BUILD_DIR/src/voice-cli docker/bin/
cp $BUILD_DIR/src/voice-tx docker/bin/
strip docker/bin/voiced
strip docker/bin/voice-cli
strip docker/bin/voice-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
