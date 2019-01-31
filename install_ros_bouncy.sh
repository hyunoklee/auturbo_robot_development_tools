#!/bin/bash
# Apache License 2.0
# AuTURBO (https://www.facebook.com/contact2auturbo/)
# author : Ryuwoon Jung (Leon)

echo ""
echo "[Note] Target OS version  >>> Ubuntu 18.04.x (Bionic Beaver)"
echo "[Note] Target ROS version >>> ROS Bouncy Bolson"
echo "[Note] Colcon workspace   >>> $HOME/colcon_ws"
echo ""
echo "PRESS [ENTER] TO CONTINUE THE INSTALLATION"
echo "IF YOU WANT TO CANCEL, PRESS [CTRL] + [C]"
read

echo "[Authorize gpg and download the ROS keys]"
sudo apt update && sudo apt install curl gnupg2
#sudo apt install curl gnupg2
#curl http://repo.ros2.org/repos.key | sudo apt-key add -
sudo apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116

echo "[Add the ROS repository]"
if [ ! -e /etc/apt/sources.list.d/ros2-latest.list ]; then
  sudo sh -c "echo \"deb [arch=amd64,arm64] http://repo.ros2.org/ubuntu/main `lsb_release -cs` main\" > /etc/apt/sources.list.d/ros-latest.list"
fi

echo "[Set the target OS, ROS version and name of colcon workspace]"
name_ros_version=${name_ros_version:="bouncy"}
name_colcon_workspace=${name_colcon_workspace:="colcon_ws"}

echo "[Update the package lists and upgrade them]"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "[Install the ros-desktop-full]"
sudo apt-get install -y ros-$name_ros_version-desktop

echo "[Environment setup and getting auto completion]"
source /opt/ros/$name_ros_version/setup.bash
sudo apt-get install python3-argcomplete
sudo apt-get install python3-colcon-common-extensions

echo "[Make the colcon workspace and test the colcon build]"
mkdir -p $HOME/$name_colcon_workspace/src
cd $HOME/$name_colcon_workspace
colcon build --symlink-install

echo "[Complete!!!]"
exit 0
