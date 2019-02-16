#!/bin/bash
# Apache License 2.0
# Copyright (c) 2018, ROBOTIS CO., LTD.
# AuTURBO (https://www.facebook.com/contact2auturbo/)
# Modified : Leon Ryuwoon Jung

echo "[Set the macro for melodic only]"
sh -c "echo \"alias eb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"
sh -c "echo \"alias cw='cd ~/catkin_ws'\" >> ~/.bashrc"
sh -c "echo \"alias cs='cd ~/catkin_ws/src'\" >> ~/.bashrc"
sh -c "echo \"alias cm='cd ~/catkin_ws && catkin_make'\" >> ~/.bashrc"

sh -c "echo \"source /opt/ros/melodic/setup.bash\" >> ~/.bashrc"
sh -c "echo \"source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"

sh -c "echo \"export ROS_MASTER_URI=http://localhost:11311\" >> ~/.bashrc"
sh -c "echo \"export ROS_HOSTNAME=localhost\" >> ~/.bashrc"

source $HOME/.bashrc

echo "[Complete!!!]"
exit 0