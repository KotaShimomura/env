#!/bin/bash

TAG="kaggledockerimage"
PROJECT_DIR="$(cd "$(dirname "${0}")/.." || exit; pwd)"

cd

docker run --gpus all -v $PWD:/tmp/working -v /media/shimo/hdd/:/tmp/hdd -w=/tmp/working \
    -p 8888:8888 --rm -it --shm-size=32gb "${TAG}" jupyter notebook \
    --no-browser --ip="0.0.0.0" --notebook-dir=/tmp/working --allow-roo
