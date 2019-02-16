# ROS installation

## ROS1

### ROS1 Kinetic

  * installation
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/install_ros_kinetic.sh && chmod 755 ./install_ros_kinetic.sh && bash ./install_ros_kinetic.sh
    ```

  * macro setting
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/add_macro_for_kinetic.sh && chmod 755 ./add_macro_for_kinetic.sh && bash ./add_macro_for_kinetic.sh
    ```

### ROS1 Melodic

  * installation
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/install_ros_melodic.sh && chmod 755 ./install_ros_melodic.sh && bash ./install_ros_melodic.sh
    ```

  * macro setting (melodic only)
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/add_macro_for_melodic_only.sh && chmod 755 ./add_macro_for_melodic_only.sh && bash ./add_macro_for_melodic_only.sh
    ```

  * macro setting (melodic with ROS2)
  
    do nothing, and follow `ROS2 installation` and `macro setting (bouncy with ROS1)`
  

## ROS2

### ROS2 Bouncy

  * installation
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/install_ros_bouncy.sh && chmod 755 ./install_ros_bouncy.sh && bash ./install_ros_bouncy.sh
    ```

  * macro setting (bouncy only)
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/add_macro_for_bouncy_only.sh && chmod 755 ./add_macro_for_bouncy_only.sh && bash ./add_macro_for_bouncy_only.sh
    ```

  * macro setting (bouncy with ROS1)
  
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/add_macro_for_bouncy_with_melodic.sh && chmod 755 ./add_macro_for_bouncy_with_melodic.sh && bash ./add_macro_for_bouncy_with_melodic.sh
    ```

### ROS2 Crystal

  * installation
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/install_ros_crystal.sh && chmod 755 ./install_ros_crystal.sh && bash ./install_ros_crystal.sh
    ```

  * macro setting (bouncy only)
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/add_macro_for_crystal_only.sh && chmod 755 ./add_macro_for_crystal_only.sh && bash ./add_macro_for_crystal_only.sh
    ```

  * macro setting (bouncy with ROS1)
  
    ``` bash
    $ sudo apt-get update
    $ sudo apt-get upgrade
    $ wget https://raw.githubusercontent.com/auturbo/auturbo_robot_development_tools/master/add_macro_for_crystal_with_melodic.sh && chmod 755 ./add_macro_for_crystal_with_melodic.sh && bash ./add_macro_for_crystal_with_melodic.sh
    ```
  
