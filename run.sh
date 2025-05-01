#!/usr/bin/env bash

docker build -t my-ros2 .

xhost +local:docker
docker run -it --rm \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --network host \
    my-ros2

