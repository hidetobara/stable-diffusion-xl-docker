# How to install

git clone ComfyUI
## download checkpoints ##
docker build -t sd-xl .
docker run --it -rm -p 8188:8188 -v /d/obara/stable-diffusion-xl:/app sd-xl /bin/bash

# downloads
- https://huggingface.co/stabilityai/stable-diffusion-xl-refiner-1.0/resolve/main/sd_xl_refiner_1.0.safetensors
- https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
- https://huggingface.co/stabilityai/sdxl-vae/resolve/main/sdxl_vae.safetensors
