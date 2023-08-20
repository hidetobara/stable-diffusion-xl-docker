FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel

WORKDIR /app

RUN apt update && apt -y install python3-pip less vim wget git
RUN pip3 install torchsde \
    einops \
    transformers>=4.25.1 \
    safetensors>=0.3.0 \
    aiohttp \
    accelerate \
    pyyaml \
    Pillow \
    scipy \
    tqdm \
    psutil \
    xformers 

EXPOSE 8188
EXPOSE 8080
# RUN git clone https://github.com/comfyanonymous/ComfyUI.git

# docker build -t sdxl .
# docker run --gpus all -it --rm -p 8188:8188 -v /d/obara/stable-diffusion-xl:/app sdxl /bin/bash
