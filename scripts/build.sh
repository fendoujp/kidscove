#!/bin/sh

sh $(pwd)/scripts/install.sh
docker run -it --rm --name kidscovebuild -v$(pwd):/work -w /work node:12-alpine npm run publish