# TabbyAPI Docker Container    
default server port: 11966  
endpoint (base url): http://0.0.0.0:11966/v1   

## Setup Instructions
update .env file as required
```bash
cp .env.template .env
```

Clone into models/ folder Qwen3.8-27B-exl3 (3.00bpw), run:
```bash
git clone --branch 3.00bpw --depth 1 https://huggingface.co/turboderp/Qwen3.8-27B-exl3 models/Qwen3.8-27B-exl3
```

other quants and models can also be used:  
[Qwen 3.8 Quants](https://huggingface.co/turboderp/Qwen3.8-27B-exl3)

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
