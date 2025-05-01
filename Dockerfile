# Use the official ROS 2 Foxy desktop image as the base image
FROM osrf/ros:foxy-desktop

# Install any additional packages you need
RUN apt-get update 
RUN apt-get install -y vim
RUN apt-get install -y tmux
RUN apt-get install -y tmuxinator
RUN apt-get install -y ~nros-foxy-rqt*
RUN rm -rf /var/lib/apt/lists/*

# setting tmux settings to allow mouse
RUN tee /root/.tmux.conf > /dev/null <<EOF
set -g default-terminal "screen-256color"
set -g mouse on
bind q killp
EOF

# source ros2 in the bashrc
RUN echo 'source /opt/ros/foxy/setup.sh' >> /root/.bashrc

# Set the default command (optional)
CMD ["bash"]

