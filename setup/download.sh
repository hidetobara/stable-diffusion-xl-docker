#!/bin/bash

wget -nc -P "models/checkpoints/" "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
wget -nc -P "models/checkpoints/" "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"

wget -nc -P "models/controlnet/" "https://huggingface.co/diffusers/controlnet-canny-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors"

git clone https://github.com/ltdrdata/ComfyUI-Manager.git custom_nodes/ComfyUI-Manager/

echo "Ready to run sdxl !"
