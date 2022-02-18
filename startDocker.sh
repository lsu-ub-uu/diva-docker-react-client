#!/bin/bash

docker run --rm -it \
    --name diva-docker-react-client1 \
    -p 9876:80 \
    diva-docker-react-client $1