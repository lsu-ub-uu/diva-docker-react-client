#!/bin/bash

BASE_URL=${1:-'https://cora.test.diva-portal.org/diva/rest/'}

echo Building diva-docker-react-client with BASE_URL $BASE_URL

docker build --no-cache --pull \
    --build-arg BASE_URL=$BASE_URL \
    -t diva-docker-react-client ./docker