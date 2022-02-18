#!/bin/bash

echo "In entrypoint.sh"
echo "*** BASE_URL: $BASE_URL ***"

nginx -g "daemon off;"