#!/bin/bash

# ติดตั้ง ffmpeg และ libsndfile
apt update && apt install -y ffmpeg libsndfile1

# Clone ComfyUI
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI || exit

# ลง PyTorch nightly version (CUDA 12.8)
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128

# ติดตั้ง requirements ของ ComfyUI
pip install -r requirements.txt

# เข้าไปใน custom_nodes
cd custom_nodes || exit

# Clone ComfyUI Manager
git clone https://github.com/Comfy-Org/ComfyUI-Manager.git

# ออกมานอก custom_nodes
cd ..

echo "✅ Installation completed!"
echo "🚀 Run ComfyUI with: python main.py --listen"
