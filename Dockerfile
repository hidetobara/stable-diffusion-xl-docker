FROM pytorch/pytorch:2.4.1-cuda12.4-cudnn9-runtime
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
	apt-get install -y curl python3-pip git vim less wget libgl1-mesa-dev libglib2.0-0 && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /app
RUN pip3 install comfyui-frontend-package==1.21.7 comfyui-workflow-templates==0.1.28 comfyui-embedded-docs==0.2.2 \
    torchsde \
    opencv-python \
    GitPython pydantic_settings av kornia spandrel\
    numpy>=1.25.0 \
    einops \
    transformers>=4.28.1 \
    tokenizers>=0.13.3 \
    sentencepiece \
    safetensors>=0.4.2 \
    aiohttp>=3.11.8 \
    yarl>=1.18.0 \
    pyyaml \
    Pillow \
    scipy \
    tqdm \
    psutil \
    alembic \
    SQLAlchemy

COPY ComfyUI /app/ComfyUI
