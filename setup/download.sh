#!/bin/bash

# SDXL base rquired
wget -nc -P "/app/models/checkpoints/" "https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors"
# SDXL vae not required
wget -nc -P "/app/models/checkpoints/" "https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors"

# for Control-Net
wget -nc -P "/app/models/controlnet/" "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_canny_mid.safetensors"
wget -nc -P "/app/models/controlnet/" "https://huggingface.co/lllyasviel/sd_control_collection/resolve/main/diffusers_xl_depth_mid.safetensors"

git clone https://github.com/ltdrdata/ComfyUI-Manager.git custom_nodes/ComfyUI-Manager/

# Flux
# https://comfyui-wiki.com/ja/tutorial/advanced/flux1-comfyui-guide-workflow-and-examples

echo "Ready to run sdxl !"
