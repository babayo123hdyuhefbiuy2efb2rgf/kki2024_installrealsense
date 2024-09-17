"# kki2024_installrealsense" 
"#---ubuntu 22.04 TLS----"
"#rasberypi 4"

#buat swap file 4 GB
chmod +x swapfile.s
./swapfile.sh


#buat virtual environtment
chmod +x environtment.sh
./environtment.sh
source myenv/bin/activate


#install librealsense
chmod +x installrealsense2.50.sh
./installrealsense2.50.sh

#install pyrealsense2
sudo apt-get install python3-pip
pip3 install pyrealsense2
pip show pyrealsense2







