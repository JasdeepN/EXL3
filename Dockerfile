FROM ghcr.io/theroyallab/tabbyapi:latest

# Fix Triton CUDA utils compilation: Python.h + libcuda.so linker path
ENV LIBRARY_PATH=/usr/local/cuda/targets/x86_64-linux/lib

RUN apt-get update -y || true && \
    apt-get install -y --no-install-recommends python3-dev 2>&1 | grep -v "Key is stored in legacy trusted.gpg keyring" && \
    # Symlink libcuda.so from compat into standard linker path so Triton can link it
    ln -sf /usr/local/cuda-12.8/compat/libcuda.so /usr/local/cuda/lib64/libcuda.so && \
    # Register the symlink with ldconfig
    ldconfig && \
    rm -rf /var/lib/apt/lists/*
