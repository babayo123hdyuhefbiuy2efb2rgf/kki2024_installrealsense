#!/bin/bash

# Install python3-venv
sudo apt install python3-venv -y

# Buat virtual environment bernama myenv
python3 -m venv myenv

# Informasi
echo "Virtual environment 'myenv' telah dibuat."
echo "Untuk mengaktifkan, jalankan: source myenv/bin/activate"
