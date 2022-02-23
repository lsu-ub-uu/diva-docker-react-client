#!/bin/bash

docker run --rm -it \
    --name diva-docker-react-client \
    -p 9876:80 \
    diva-docker-react-client:latest $1