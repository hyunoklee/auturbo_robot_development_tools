#!/bin/bash
# Apache License 2.0
# AuTURBO (https://www.facebook.com/contact2auturbo/)
# Author : Leon Ryuwoon Jung

echo "[Set the ROS environment]"
sh -c "echo \"alias eb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"
sh -c "echo \"alias cw='cd ~/colcon_ws'\" >> ~/.bashrc"
sh -c "echo \"alias cs='cd ~/colcon_ws/src'\" >> ~/.bashrc"
sh -c "echo \"alias cm='cd ~/colcon_ws && colcon build --symlink-install'\" >> ~/.bashrc"

sh -c "echo \"source /opt/ros/crystal/setup.bash\" >> ~/.bashrc"
sh -c "echo \"source ~/colcon_ws/install/local_setup.bash\" >> ~/.bashrc"

source $HOME/.bashrc

echo "[Complete!!!]"
exit 0