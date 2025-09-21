#!/usr/bin/env bash
set -euo pipefail
IMG="${1:-youruser/multiarch-demo:latest}"
docker buildx create --use || true
docker buildx build --platform linux/amd64,linux/arm64 -t "$IMG" --push .
echo "Pushed $IMG for amd64 and arm64"
