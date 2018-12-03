#!/bin/bash
# Apache License 2.0
# AuTURBO (https://www.facebook.com/contact2auturbo/)
# Author : Leon Ryuwoon Jung

echo "[Set the ROS environment]"
sh -c "echo \"alias eb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"

sh -c "echo \"alias r1='export ROS_MODE=r1 && source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias r2='export ROS_MODE=r2 && source ~/.bashrc'\" >> ~/.bashrc"

sh -c "echo \"if [ \"\$\ROS_MODE\" = 'r1' ];then\" >> ~/.bashrc"
sh -c "echo \"	echo ROS1 Mode\" >> ~/.bashrc"
sh -c "echo \"	source /opt/ros/melodic/setup.bash\" >> ~/.bashrc"
sh -c "echo \"	source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"
sh -c "echo \"	export ROS_MASTER_URI=http://localhost:11311\" >> ~/.bashrc"
sh -c "echo \"	export ROS_HOSTNAME=localhost\" >> ~/.bashrc"
sh -c "echo \"	alias cw='cd ~/catkin_ws'\" >> ~/.bashrc"
sh -c "echo \"	alias cs='cd ~/catkin_ws/src'\" >> ~/.bashrc"
sh -c "echo \"	alias cm='cd ~/catkin_ws && catkin_make'\" >> ~/.bashrc"
sh -c "echo \"elif [ \"\$\ROS_MODE\" = 'r2' ];then\" >> ~/.bashrc"
sh -c "echo \"	echo ROS2 Mode\" >> ~/.bashrc"
sh -c "echo \"	source /opt/ros/bouncy/setup.bash\" >> ~/.bashrc"
sh -c "echo \"	source ~/colcon_ws/install/local_setup.bash\" >> ~/.bashrc"
sh -c "echo \"	alias cw='cd ~/colcon_ws'\" >> ~/.bashrc"
sh -c "echo \"	alias cs='cd ~/colcon_ws/src'\" >> ~/.bashrc"
sh -c "echo \"	alias cm='cd ~/colcon_ws && colcon build --symlink-install'\" >> ~/.bashrc"
sh -c "echo \"fi\" >> ~/.bashrc"

source $HOME/.bashrc

echo "[Complete!!!]"
exit 0