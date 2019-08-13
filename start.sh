#!/usr/bin/env bash

docker run \
  -it --rm \
  --user $(id -u):$(id -g) \
  --group-add users \
  -v /home/beyka1/work:/home/jovyan \
  -v /home/beyka1/.aws:/home/jovyan/.aws \
  -e JUPYTER_ENABLE_LAB=yes2 \
  -p 8888:8888 \
  --network=host \
  adham/jupyter