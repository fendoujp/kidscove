#!/bin/sh

if [[ ! -d node_modules ]]; then
    docker run -it --rm --name kidscovebuild -v$(pwd):/work -w /work node:12-alpine sh -c '
        ls -la
        apk add --no-cache \
            alpine-sdk \
            autoconf \
            automake \
            zlib-dev \
            libtool \
            nasm
        npm install
    '
fi