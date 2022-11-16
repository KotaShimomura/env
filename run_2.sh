#!/bin/bash
#
TAG="kaggledockerimage"
PROJECT_DIR="$(cd "$(dirname "${0}")/.." || exit; pwd)"

docker run --gpus all \
  -p 8888:8888 \
  -it --rm \
  --shm-size=48gb \
  -v "${PROJECT_DIR}:/workspace" \
  -w "/workspace" \
  "${TAG}" \
