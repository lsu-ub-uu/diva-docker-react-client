#!/bin/bash

BASE_URL=${1:-'https://cora.test.diva-portal.org/diva/rest/'}

docker build --no-cache --pull \
    --build-arg BASE_URL=$BASE_URL \
    -t diva-docker-react-client ./docker