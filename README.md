# ROS2 Docker container

Simple Dockerfile to create a ROS2 based on the ROS Foxy docker container.

Features:
- based on ROS2 Foxy
- allows launching GUI applications
- interface with network enabled
- preinstalled packages
  - tmux, tmuxinator
  - rqt and rqt plugins
- simple install & launch: [`run.sh`](run.sh)

# Instructions

First of course install docker and allow running it as non-root user. You can find instructions on the [docker website](https://docs.docker.com/get-docker/).

Then simply run:

```bash
./run.sh
```

Hope it helps you to get started with ROS2 and Docker.