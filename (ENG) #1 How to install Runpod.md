# lean2ComfyUI  
(*Just starting to learn from general knowledge sources, suitable for beginners who want to explore ComfyUI.*)  

This is a space to collect knowledge that I’ve picked up from various sources and put together.  
I personally don’t have a powerful computer, so I primarily use cloud services like [runpod.io](https://runpod.io?ref=c0v5p0ys).  

[![Watch the video](https://img.youtube.com/vi/KvZRuwcZ3Is/0.jpg)](https://www.youtube.com/watch?v=KvZRuwcZ3Is)

## Signing up for Runpod.io  
When using Runpod, you pay based on the computing resources you use per hour.  
I usually go for options that cost around **$0.2 - $0.4 per hour**. Using it for about **6 hours** costs approximately **$2.5 - $3.5 USD (or around 85 THB for 6 hours)**, which is very affordable compared to buying a high-spec PC.  

In exchange, I can generate **high-quality images** using large FLUX models to get the results I want.  

**Important:**  
After finishing your work, make sure to **delete your Pod** so you don’t have to pay for storage fees. I’ll explain how to manage this later.  

---

### **Steps to Get Started with Runpod.io**
#### 1. **Sign up with Gmail**  
   
#### 2. **Add funds**  
Minimum deposit: **$10 USD**  
![image](https://github.com/user-attachments/assets/e1aebf51-0476-4ee8-9658-2add9c27726a)

#### 3. **Select a GPU Cloud instance**  
![image](https://github.com/user-attachments/assets/27493015-cd49-4fea-89fe-34516a35a452)

#### 4. **Choose "Community Cloud"**  
- It's usually cheaper.  
- "Secure Cloud" is good too, but demand is higher.  
- If you plan to **rent long-term** or run a **web service**, you might not need to worry about this.  
- This guide is intended for beginners trying Runpod for the first time.  

#### 5. **Select your machine specs**  
Look for a machine with:  
✅ **VRAM:** 20GB+  
✅ **RAM:** 60GB+  
✅ **Price:** $0.5 - $0.2 per hour  

**Speed Categories:**  
- **Low, Medium, High** → Affects download speed for models  
- If you frequently download large models, **choose Medium or High**  
- If only Low is available, it’s still usable  

**2x in GPU names** = Two GPUs  
- I prefer **a single GPU** with **20GB+ VRAM**, as it usually runs faster.  
- Try different options to see what works best for you.  
![image](https://github.com/user-attachments/assets/95191c1b-5f0c-44d3-9ec0-a6824b8f2276)

#### 6. **Choose a Template**  
Scroll down to find the **Template button**  
![image](https://github.com/user-attachments/assets/8ae9a710-35de-4b56-8725-f08b725df780)

I personally use:  
**runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04**  
- It includes **Jupyter & Web Terminal**, making file management easy.  
![image](https://github.com/user-attachments/assets/6866b2f0-21b7-4dec-8fe4-bb4f71b4e208)

If you’re comfortable with **Docker**, you can choose another version.  
Since I’m not familiar with Docker, I prefer **Pytorch - Jupyter**, which works similarly to **Google Colab**.  

---

### **Setting Up the Template**
- **Disk space:** At least **120GB**  
- **Port:** Set **8188** to open **WebUI**  
![image](https://github.com/user-attachments/assets/7402ed67-3e2e-4418-8871-c28f6bb62daa)

---

### **Waiting for Installation**  
Runpod will take a moment to install your **virtual machine**.  
![image](https://github.com/user-attachments/assets/d7a9a6cb-181e-4a3a-97de-190829ad96a4)

#### 7. **Check if it’s ready**  
When you see the **green "Running" status**, it’s ready!  
![image](https://github.com/user-attachments/assets/f9a541d3-6a68-4937-8b4a-9e99784ee9ff)

Click the **green "Running" button**  
![image](https://github.com/user-attachments/assets/07acd97c-908e-4b60-a7bb-1bf010b95a60)

Then click **Connect**  
![image](https://github.com/user-attachments/assets/6c641237-6332-4924-a94d-6a622cfbf8d4)

When **Jupyter turns green**, it’s ready to use!  
![image](https://github.com/user-attachments/assets/5a5a93c3-428e-4d77-ade6-0360c9962d95)

---

🎉 **Now you're ready to install ComfyUI!** 🎉  

🔗 **If you're new to Runpod and want to support me, use my affiliate link:**  
[runpod.io](https://runpod.io?ref=c0v5p0ys)
