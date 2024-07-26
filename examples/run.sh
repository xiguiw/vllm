#!/bin/bash
export HF_HOME=/data
python3 /workspace/vllm/vllm/entrypoints/openai/api_server.py --model Intel/neural-chat-7b-v3-3 --port 80
