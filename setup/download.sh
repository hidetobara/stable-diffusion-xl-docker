#!/bin/bash

# SDXL base rquired
wget -nc -P "models/checkpoints/" "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
# SDXL vae not required
wget -nc -P "models/checkpoints/" "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"

# for Control-Net
wget -nc -P "models/controlnet/" "https://huggingface.co/diffusers/controlnet-canny-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors"

echo "Ready to run sdxl !"
