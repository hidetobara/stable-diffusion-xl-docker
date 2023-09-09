#!/bin/bash

accelerate launch --num_cpu_threads_per_process 2 sd-scripts/sdxl_train_network.py \
    --pretrained_model_name_or_path="/app/models/checkpoints/cherryPickerXL_v25.safetensors" \
    --dataset_config="/app/run/data/lala.toml" \
    --output_dir="/app/fine-tuned/" \
    --output_name="lala" \
    --save_model_as=safetensors \
    --max_train_steps=750 \
    --learning_rate=4e-07 \
    --unet_lr=2e-4 \
    --optimizer_type="Adafactor" \
    --mixed_precision="no" \
    --cache_latents \
    --gradient_checkpointing \
    --save_every_n_epochs=5 \
    --lr_scheduler=constant_with_warmup \
    --lr_warmup_steps=100 \
    --optimizer_args scale_parameter=False relative_step=False warmup_init=False \
    --network_module=networks.lora \
    --network_train_unet_only \
    --bucket_reso_steps 64 \
    --network_dim 32 \
    --xformers \
    --cache_text_encoder_outputs
