#!/bin/bash
git clone https://github.com/comfyanonymous/ComfyUI.git

wget -P comfyUI/models/checkpoints/ https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors

wget -P comfyUI/models/controlnet/ https://huggingface.co/diffusers/controlnet-canny-sdxl-1.0/resolve/main/diffusion_pytorch_model.fp16.safetensors
