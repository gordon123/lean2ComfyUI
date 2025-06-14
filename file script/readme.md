In this folder is my script for Jupyter to setup on [Runpod.io](https://runpod.io?ref=c0v5p0ys)  for comfyUI and here are FLUX collection download link

**Flux Models** <br>
(In runpod go to this folder ```/workspace/ComfyUI/models/unet```) [23.8GB Flux Dev FP16] <br>
https://huggingface.co/black-forest-labs/FLUX.1-dev/tree/main <br>

(In runpod go to this folder ```/workspace/ComfyUI/models/unet```) [11.9GBFlux Dev FP8.e4m3fn] <br>
https://huggingface.co/Kijai/flux-fp8/tree/main <br>

(AIO Flux file, In runpod go to this folder ```/workspace/ComfyUI/models/checkpoints```) [17.2 GB Flux Dev FP8]<br>
 https://huggingface.co/lllyasviel/flux1_dev/tree/main <br>
 
(In runpod go to this folder ```/workspace/ComfyUI/models/unet```) [6.81GB flux1-dev-Q4_K_S.gguf] <br>
https://huggingface.co/lllyasviel/FLUX.1-dev-gguf/tree/main <br>
GGUF Custom node: <br>
https://github.com/city96/ComfyUI-GGUF <br>
<br>
(AIO Flux file, In runpod go to this folder ```/workspace/ComfyUI/models/checkpoints```) [12GB Flux Dev BNB NF4] <br>
https://huggingface.co/lllyasviel/flux1-dev-bnb-nf4/tree/main <br>
<br>
(In runpod go to this folder ```/workspace/ComfyUI/models/unet```) <br> https://huggingface.co/InvokeAI/flux_dev/tree/main/transformer/bnb_nf4 <br>
<br> 
(AIO Flux file, In runpod go to this folder ```/workspace/ComfyUI/models/checkpoints```) 12GB Flux Dev 8 Step NF4 Checkpoint<br> 
https://huggingface.co/ZhenyaYang/flux_1_dev_hyper_8steps_nf4/tree/main <br>

NF4 custom node : https://github.com/comfyanonymous/ComfyUI_bitsandbytes_NF4 <br>

Flux Lite 8B Alpha  (```/workspace/ComfyUI/models/unet```) https://huggingface.co/Freepik/flux.1-lite-8B-alpha/tree/main <br>
Flux Lite 8B Alpha GGUF (```/workspace/ComfyUI/models/unet```) https://huggingface.co/city96/flux.1-lite-8B-alpha-gguf/tree/main <br>

**Flux Lora** <br>
Flux Dev 8 & 16 Step Hyper Lora ```/workspace/ComfyUI/models/loras``` https://huggingface.co/ByteDance/Hyper-SD/tree/main <br>
Flux Dev Turbo Alpha (8 Step Lora) ```/workspace/ComfyUI/models/loras``` https://huggingface.co/alimama-creative/FLUX.1-Turbo-Alpha/tree/main <br>
<br>
**Flux Text Encoders & VAE** <br>
Flux T5xxl-Fp8 & Fp16 https://huggingface.co/comfyanonymous/flux_text_encoders/tree/main/ <br>
Flux Text Encoder Vit-L https://huggingface.co/zer0int/CLIP-GmP-ViT-L-14/tree/main <br>
Flux GGUF Text encoders  https://huggingface.co/city96/t5-v1_1-xxl-encoder-gguf/tree/main <br>
Flux VAE https://huggingface.co/black-forest-labs/FLUX.1-dev/tree/main/ <br>

<br>
Flux Schnell (4-8 steps) https://huggingface.co/maximsobolev275/flux-fp8-schnell/tree/main  <br>
Flux Schnell FP8(AIO, download flux1-schnell_fp8_unet_vae_clip.safetensors) https://huggingface.co/maximsobolev275/flux-fp8-schnell/tree/main <br>
Flux Schnell FP8 (Unet ,  vae, clip_l, T5 encoder) https://huggingface.co/maximsobolev275/flux-fp8-schnell/tree/main <br>

Flux Schnell NF4 (AIO) https://huggingface.co/silveroxides/flux1-nf4-weights/tree/main
Flux Schnell GGUF https://huggingface.co/lllyasviel/FLUX.1-schnell-gguf/tree/main

**Flux Merged (Dev-Schnell, 4-8 steps)**
Flux Merged NF4 FP8 https://civitai.com/models/628862?modelVersionId=764659 <br>
Flux Merged GGUF https://civitai.com/models/657607?modelVersionId=745392 <br>
<br>
**Flux ControlNet** <br>
Flux Dev Depth ControlNet Lora https://huggingface.co/black-forest-labs/FLUX.1-Depth-dev-lora/resolve/main/flux1-depth-dev-lora.safetensors <br>
Flux Dev Canny ControlNet Lora https://huggingface.co/black-forest-labs/FLUX.1-Canny-dev-lora/resolve/main/flux1-canny-dev-lora.safetensors
Flux Dev Fill https://civitai.com/models/981615/fluxfill-inpaint-lora <br>
<br>
Flux Dev Depth ControlNet  https://huggingface.co/black-forest-labs/FLUX.1-Depth-dev/tree/main <br>
Flux Dev Canny ControlNet https://huggingface.co/black-forest-labs/FLUX.1-Canny-dev/tree/main<br>

Flux InstantX ControlNet Union https://huggingface.co/InstantX/FLUX.1-dev-Controlnet-Union/tree/main <br>
Flux Controlnet Union Pro https://huggingface.co/Shakker-Labs/FLUX.1-dev-ControlNet-Union-Pro<br>
<br>
**Flux Inpaint/Outpaint** <br>
FLUX.1-Fill-dev https://huggingface.co/black-forest-labs/FLUX.1-Fill-dev/tree/main<br>
FLUX.1-Fill-dev FP8 https://civitai.com/models/969431/flux-fill-fp8<br>
FLUX.1-Fill-dev-gguf https://huggingface.co/YarvixPA/FLUX.1-Fill-dev-gguf/tree/main<br>

---
CLIP-L <br>
https://huggingface.co/zer0int/CLIP-GmP-ViT-L-14/tree/main<br>

T5 <br>
https://huggingface.co/comfyanonymous/flux_text_encoders/tree/main <br>

Flux VAE
```
wget --header="Authorization: Bearer hf_ไปสร้าง Token มาวางในนี้" \
"https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors"
```


