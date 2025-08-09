#!/bin/bash
set -e  # Exit if any command fails

# Move to the training script location
cd /app/diffusion-pipe

# Launch WAN 2.2 high-noise LoRA training
deepspeed --num_gpus=1 train.py \
    --deepspeed \
    --config /workspace/diffusion-pipe/toml/wan_2.2_high.toml
