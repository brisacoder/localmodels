#!/bin/bash

set -e

# Define target directory
MODEL_DIR="./models/mistral"

echo "🚀 Launching vLLM API server..."
python3 -m vllm.entrypoints.openai.api_server \
    --model $MODEL_DIR \
    --port 8456