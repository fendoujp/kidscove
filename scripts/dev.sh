#!/bin/sh
sh $(pwd)/scripts/install.sh
docker run -it --rm --name kidscove -p 8001-8002:8001-8002 -v$(pwd):/work -w /work node:12-alpine npm start