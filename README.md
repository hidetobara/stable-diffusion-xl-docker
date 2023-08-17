# How to install

git clone ComfyUI
## download checkpoints ##
docker build -t sd-xl .
docker run --it -rm -p 8188:8188 -v /d/obara/stable-diffusion-xl:/app sd-xl /bin/bash