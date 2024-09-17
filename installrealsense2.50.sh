#!/bin/bash

# Update dan upgrade sistem
sudo apt-get update && sudo apt-get upgrade -y

# Download librealsense dari GitHub
wget https://github.com/IntelRealSense/librealsense/releases/download/v2.50.0/librealsense-2.50.0.tar.gz

# Ekstrak file yang diunduh
tar -xvzf librealsense-2.50.0.tar.gz

# Masuk ke direktori librealsense
cd librealsense-2.50.0

# Buat folder build dan masuk ke dalamnya
mkdir build && cd build

# Install dependencies
sudo apt install git cmake libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev -y
sudo apt install python3-dev python3-pip -y
sudo apt-get install libglfw3-dev libglew-dev -y
sudo apt-get install python3-distutils -y
sudo apt-get install python3-setuptools -y

# Copy udev rules
sudo cp ../config/99-realsense-libusb.rules /etc/udev/rules.d/

# Reload udev rules
sudo udevadm control --reload-rules && sudo udevadm trigger

# Install additional tools
sudo apt-get install cmake gcc g++ -y

# Build librealsense dengan opsi yang diberikan
cmake ../ -DBUILD_EXAMPLES=true -DFORCE_LIBUVC=true

# Kompilasi proyek menggunakan 4 core
make -j4

# Install hasil kompilasi
sudo make install
