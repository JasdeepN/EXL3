TabbyAPI Docker Container  
## Setup Instructions

To clone this repository and Qwen3.8-27B-exl3 (3.00bpw), run:

```bash
git clone --recurse-submodules --shallow-submodules JasdeepN/EXL3
```

or if already cloned base repo

```bash
git submodule update --init --recursive --depth 1
```

## Run Instructions

```bash
# First time 
docker compose up --build
# Rebuild
docker compose up --build --no-cache
# Normal Startup
docker compose up
```

## Links
[TabbyAPI](https://github.com/theroyallab/tabbyAPI)  
[ExllamaV3](https://github.com/turboderp-org/exllamav3)  
[turboderp](https://huggingface.co/turboderp/)  
