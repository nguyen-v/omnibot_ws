#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Optionally, update submodules if needed:
# git submodule update --init --recursive

# Build 10_axis_imu_ros2_docker
echo "Building 10_axis_imu_ros2_docker..."
cd 10_axis_imu_ros2_docker
docker build -t imu_ros2:latest .
cd ..

# Build camera_rpi5_ros2_docker
echo "Building camera_rpi5_ros2_docker..."
cd camera_rpi5_ros2_docker
docker build -t camera_ros .
cd ..

# Build omnibot_ros2_control_docker
echo "Building omnibot_ros2_control_docker..."
cd omnibot_ros2_control_docker
docker build -t omnibot_ros2_control:latest .
cd ..

# Build rosboard_ros2_docker
echo "Building rosboard_ros2_docker..."
cd rosboard_ros2_docker
docker build -t rosboard_ros2:latest .
cd ..

# Build rplidar_ros2_docker
echo "Building rplidar_ros2_docker..."
cd rplidar_ros2_docker
docker build -t sllidar_ros2:latest .
cd ..

# Build thermal_camera_ros2_docker
echo "Building thermal_camera_ros2_docker..."
cd thermal_camera_ros2_docker
docker build -t thermal_camera_ros2:latest .
cd ..

echo "All Docker images built successfully!"
