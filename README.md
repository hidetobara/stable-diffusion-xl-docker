# First, install
git clone https://github.com/comfyanonymous/ComfyUI.git

# Build
docker compose build sdxl

# Test ComfyUI
docker compose run --rm --service-ports /bin/bash

# Run ComfyUI
docker compose --profile ryzen27 up
