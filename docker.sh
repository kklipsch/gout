#!/bin/sh

set -eu

TAG=$1

docker login -u="$DOCKER_USERNAME" -p="$DOCKER_API_KEY"
docker build -t $DOCKER_USERNAME/gout:$TAG .
docker push $DOCKER_USERNAME/gout:$TAG
