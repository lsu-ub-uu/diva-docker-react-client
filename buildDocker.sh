#!/bin/bash

BASE_URL=${1:-'https://cora.test.diva-portal.org/diva/rest/'}
BASENAME=${2:-'/'}

echo Building diva-docker-react-client with BASE_URL $BASE_URL and BASENAME $BASENAME

docker build --no-cache --pull \
    --build-arg BASE_URL=$BASE_URL \
    --build-arg BASENAME=$BASENAME \
    -t diva-docker-react-client ./docker