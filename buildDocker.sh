#!/bin/bash

BASE_URL=${1:-'https://cora.test.diva-portal.org/diva/rest/'}
BASENAME=${2:-'/'}
VERSION=${3:-'latest'}

TAG=diva-docker-react-client:$VERSION

echo Building diva-docker-react-client with BASE_URL $BASE_URL, BASENAME $BASENAME and VERSION $VERSION

docker build --no-cache --pull \
    --build-arg BASE_URL=$BASE_URL \
    --build-arg BASENAME=$BASENAME \
    -t $TAG ./docker