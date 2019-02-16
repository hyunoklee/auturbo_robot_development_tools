#!/bin/bash
# Apache License 2.0
# Copyright (c) 2018, ROBOTIS CO., LTD.
# AuTURBO (https://www.facebook.com/contact2auturbo/)
# Modified : Leon Ryuwoon Jung

echo "[Set the macro for bouncy with melodic]"
sh -c "echo \"alias eb='nano ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias sb='source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias gs='git status'\" >> ~/.bashrc"
sh -c "echo \"alias gp='git pull'\" >> ~/.bashrc"

sh -c "echo \"alias r1='export ROS_MODE=ros1 && source ~/.bashrc'\" >> ~/.bashrc"
sh -c "echo \"alias r2='export ROS_MODE=ros2 && source ~/.bashrc'\" >> ~/.bashrc"

sh -c "echo 'if [ \"\$ROS_MODE\" = \"ros1\" ];then' >> ~/.bashrc"
sh -c "echo \"	echo ROS1 Mode\" >> ~/.bashrc"
sh -c "echo \"	source /opt/ros/melodic/setup.bash\" >> ~/.bashrc"
sh -c "echo \"	source ~/catkin_ws/devel/setup.bash\" >> ~/.bashrc"
sh -c "echo \"	export ROS_MASTER_URI=http://localhost:11311\" >> ~/.bashrc"
sh -c "echo \"	export ROS_HOSTNAME=localhost\" >> ~/.bashrc"
sh -c "echo \"	alias cw='cd ~/catkin_ws'\" >> ~/.bashrc"
sh -c "echo \"	alias cs='cd ~/catkin_ws/src'\" >> ~/.bashrc"
sh -c "echo \"	alias cm='cd ~/catkin_ws && catkin_make'\" >> ~/.bashrc"
sh -c "echo 'elif [ \"\$ROS_MODE\" = \"ros2\" ];then' >> ~/.bashrc"
sh -c "echo \"	echo ROS2 Mode\" >> ~/.bashrc"
sh -c "echo \"	source /opt/ros/bouncy/setup.bash\" >> ~/.bashrc"
sh -c "echo \"	source ~/colcon_ws/install/local_setup.bash\" >> ~/.bashrc"
sh -c "echo \"	source ~/colcon_ws/install/local_setup.bash\" >> ~/.bashrc"
sh -c "echo '        export CMAKE_PREFIX_PATH=\$AMENT_PREFIX_PATH:\$CMAKE_PREFIX_PATH' >> ~/.bashrc"
sh -c "echo \"	export ROS_DOMAIN_ID=1\" >> ~/.bashrc"
sh -c "echo \"	alias cw='cd ~/colcon_ws'\" >> ~/.bashrc"
sh -c "echo \"	alias cs='cd ~/colcon_ws/src'\" >> ~/.bashrc"
sh -c "echo \"	alias cm='cd ~/colcon_ws && colcon build --symlink-install'\" >> ~/.bashrc"
sh -c "echo \"fi\" >> ~/.bashrc"

source $HOME/.bashrc

echo "[Complete!!!]"
exit 0