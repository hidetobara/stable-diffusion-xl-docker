#!/bin/bash
git clone https://github.com/comfyanonymous/ComfyUI.git

wget -P comfyUI/models/checkpoints/ https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
