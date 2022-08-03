#!/bin/bash

echo "In entrypoint.sh"
echo "*** REST_API_BASE_URL: $REST_API_BASE_URL ***"

nginx -g "daemon off;"