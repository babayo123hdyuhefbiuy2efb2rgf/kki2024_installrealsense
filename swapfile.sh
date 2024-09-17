#!/bin/bash

# Matikan swap
sudo swapoff /swapfile

# Hapus file swap lama
sudo rm /swapfile

# Buat file swap baru dengan ukuran 4GB
sudo fallocate -l 4G /swapfile

# Setel izin akses ke file swap
sudo chmod 600 /swapfile

# Buat file swap
sudo mkswap /swapfile

# Aktifkan file swap baru
sudo swapon /swapfile

# Tampilkan status swap
sudo swapon --show
