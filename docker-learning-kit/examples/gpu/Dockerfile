FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04
RUN nvidia-smi || true
CMD ["bash", "-lc", "nvidia-smi || echo 'No GPU available'"]
