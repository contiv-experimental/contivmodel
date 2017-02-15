#!/bin/bash

set -euo pipefail

docker build -t contiv/spec:latest .
cid=$(docker run -itd contiv/spec:latest)
docker cp ${cid}:/contiv/contiv.html .
docker rm -f -v ${cid}
