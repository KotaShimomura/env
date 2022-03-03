#!/bin/bash

TAG="kaggledockerimage"
cd "$(dirname "${0}")/.." || exit

DOCKER_BUILDKIT=1 docker build --progress=plain -t ${TAG} -f /home/kotashimomura/env/Dockerfile .