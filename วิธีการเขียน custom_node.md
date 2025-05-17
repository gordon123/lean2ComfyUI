# 📦 Basic Structure for ComfyUI Custom Node

This is a minimal working structure to create a custom node in [ComfyUI](https://github.com/comfyanonymous/ComfyUI) 

---

## 🗂 Folder Structure
```
ComfyUI/
└── custom_nodes/
  └── MyCustomNodeFolder/
    ├── init.py # ต้องมี เพื่อให้ comfy รู้จัก
    └── my_node.py # ชื่อ custom node
```

---

## 🧩 my_node.py (example)

```python
class MyNode: # ชื่อ customnode
    @classmethod # เริ่มแรก ประกาศ classmethod เสมอ
    def INPUT_TYPES(cls): #สร้าง function เพื่อให้ comfy รู้จัก
    return { #ตัวอย่าง input ต่าง ๆ ของ node 
        "required": {
            "text_input": ("STRING", {"default": "Hello world", "multiline": True}),
            "step_count": ("INT", {"default": 30, "min": 1, "max": 100}),
            "strength": ("FLOAT", {"default": 0.8, "min": 0.0, "max": 1.0}),
            "apply_mask": ("BOOLEAN", {"default": False}),
            "quality": ("CHOICE", {"choices": ["low", "medium", "high"], "default": "medium"}),
            "input_image": ("IMAGE",),
            "latent_input": ("LATENT",),
            "mask_input": ("MASK",),
            "prompt_embedding": ("CONDITIONING",),
        },
        "optional": {
            "comment": ("STRING", {"default": "", "multiline": True})
        }
    } # จบตัวอย่าง input ต่าง ๆ ของ node 
```
###### 🧠 ComfyUI `RETURN_TYPES` Reference

| `RETURN_TYPE`           | Description                                                      | Example Use Case                       |
|-------------------------|------------------------------------------------------------------|----------------------------------------|
| `"STRING"`              | Plain text string                                                | Prompts, captions, parameters          |
| `"INT"`                 | Integer number                                                   | Seed values, steps                     |
| `"FLOAT"`               | Floating point number                                            | Strength, scale                        |
| `"BOOLEAN"`             | Boolean value (`True` / `False`)                                 | Toggle features                        |
| `"IMAGE"`               | Rendered RGB image (as tensor)                                   | Display, save, or post-process         |
| `"LATENT"`              | Latent image tensor (used in generation process)                 | Decode with VAE, upscaling             |
| `"MASK"`                | Mask image (binary or greyscale)                                 | Use for inpainting or selective edits  |
| `"CONDITIONING"`        | Prompt embeddings from text encoder                              | Feed into KSampler                     |
| `"MODEL"`               | Checkpoint model object                                          | Used by generation nodes               |
| `"VAE"`                 | VAE model object                                                 | For encoding/decoding latent/images    |
| `"CLIP"`                | CLIP model object                                                | Used to embed text into CONDITIONING   |
| `"UNET"`                | UNet model object                                                | Required by samplers like KSampler     |
| `"LORA_STACK"`          | List/stack of LoRA models                                        | Merge multiple LoRAs into model        |
| `"CONTROL_NET_STACK"`   | Stack of ControlNet model inputs                                 | ControlNet input (like edge/sketch)    |
#####  ตัวอย่าง RETURN ต่างๆ
```




    RETURN_TYPES = ("IMAGE", "STRING")
    RETURN_NAMES = ("image_output", "caption_text")
    FUNCTION = "process" #เรียกใช้งาน function ที่เราเขียน
    CATEGORY = "MyCategory" # ตั้งชื่อ ให้ custom node เรา เวลา เรา click ขวา ใน comfyui

    def process(self, text): # function code ที่เราจะสร้าง เริ่มจากนี้
        return (text.upper(),)
```
###################file __init__.py เอาไว้ ทำโครงสร้าง #####################

```__init__.py # โครงสร้าง init จะประมาณนี้ เพื่อทำให้สามารถ โหลด custom node ได้

from .my_node import MyNode

NODE_CLASS_MAPPINGS = {
    "MyNode": MyNode
}

NODE_DISPLAY_NAME_MAPPINGS = {
    "MyNode": "🧩 My Custom Node"
}
```
