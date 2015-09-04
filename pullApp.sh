#!/bin/bash

if [ "$1" != "null" ]; then
  echo "Downloading Application"
  git clone $1 /tmp/app
  cp -a /tmp/app/. /usr/share/nginx/html
else
  echo "Put APP_URL env to download application"
fi
