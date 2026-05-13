#!/bin/bash

echo "=== Avvio MediaFlow ==="

exec /mediaflow_proxy/.venv/bin/python -m uvicorn mediaflow_proxy.main:app \
  --host 0.0.0.0 \
  --port 7860
