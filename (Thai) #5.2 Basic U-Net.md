# Stable diffusion คืออะไร

![what is stable diffusion](image-4.png)
 ถ้าอธิบายภาษาบ้าน ๆ ดูตามรูปเลย คือ เขียนข้อความ แล้วใช้โมเดล ของ Stable diffusion  หลัก ๆ สามตัวนี้ คือ CLIP, U-Net และ VAE
 เพื่อให้ได้ภาพจากข้อความที่เราเขียน ซึ่งจินตนาการล้วน ๆ เป็นสิ่งที่ไม่มีจริงในโลกนี้ก็ได้ .... จบ การอธิบาย แบบง่าย ๆ เข้าใจแค่นี้ เจนรูป(ย่อจาก Image Generative AI) ได้แล้ว

---
แต่ถ้าใครอยากเข้าใจมากขึ้น (ปวดหัวมากกว่านี้) ลองตามอ่านต่อ เรื่อง U-Net <br>
ป. ลิง U-Net ในที่นี้ ไม่ใช่ U-NET (University National Education Test )  <br>

# U-Net คืออะไร <br>
U-Net เป็นโครงข่าย Network ที่มีโครงสร้างเป็นรูปตัว "U" พัฒนาโดย [Olaf Ronneberger et al. 2015](https://arxiv.org/abs/1505.04597) ที่ออกแบบมาเพื่อ Image Segmentation หรือ การประมวลผลภาพ และใช้กันอย่างแพร่หลายใน Deep Learning และ Computer Vision โดยเฉพาะในงาน Image-to-Image Translation, Medical Image Processing และ Generative Models <br>

💡 U-Net ถูกใช้ใน Stable Diffusion เพื่อ ลบสัญญาณรบกวน (denoising) และช่วยสร้างภาพที่แม่นยำจาก latent space <br>

![U-net](image-9.png) <br>
หน้าตาของ U-Net เป็นรูปตัว U  <br>
**รูปที่ 1** ตัวอย่างโครงสร้างของ U-Net ในการเพิ่ม Noise และแปลงข้อมูลของ Latent space ที่ถูกลดขนาดลง เพื่อช่วยลดความจำ โดยข้อมูลถูกลดขนาดเล็กลงประมาณ 40 เท่า แล้วเพิ่ม Noise ให้ได้รูปกลับมา <br>

# 🖼️ **U-Net ใน Stable Diffusion: โครงสร้างและการทำงาน** <br>

## **📌 1. U-Net คืออะไร?** <br>
**U-Net** เป็นโครงข่ายประสาทเทียมแบบ **Encoder-Decoder** ที่มีโครงสร้างเป็นรูปตัว **"U"**   <br>
ใช้กันอย่างแพร่หลายใน **Image Segmentation, Image Processing และ AI Image Generation**   <br>

ใน **Stable Diffusion**, **U-Net** มีหน้าที่หลักคือ: <br>
- **ลดสัญญาณรบกวน (Denoising)** ใน **Latent Space** <br>
- **เข้าใจข้อมูลจาก Text Prompt** และ **ควบคุมการสร้างภาพ** <br>
- **ทำ Cross Attention กับข้อความ** เพื่อให้ภาพที่สร้างตรงกับคำสั่ง Prompt หรือ Input อื่น ๆ มากขึ้น <br>

---

## **📌 2. โครงสร้างของ U-Net** <br>
U-Net แบ่งออกเป็น 3 ส่วนหลัก: <br>

| **Component**  | **รายละเอียด** |
|--------------|----------------|
| **🔻 Encoder (Downsampling Path)** | ลดขนาดภาพโดยใช้ **Convolution + ReLU** ดึง Feature สำคัญ |
| **⚡ Bottleneck (Middle Layer)** | ใช้ **Self-Attention + Cross-Attention** เพื่อเชื่อมโยงข้อมูลภาพกับข้อความ |
| **🔺 Decoder (Upsampling Path)** | ขยายภาพกลับโดยใช้ **Transposed Convolutions** และเติมรายละเอียด |

✅ **ใช้ Skip Connections เชื่อมข้อมูลจาก Encoder → Decoder เพื่อป้องกันการสูญเสียข้อมูล** <br>

---

## **📌 3. การทำงานของ U-Net ใน Stable Diffusion**
1️⃣ **รับข้อมูลจาก Latent Space** (ขนาด 4×64×64) ถูกแปลงมาจาก Transformer (512 x 512 x 3 จากข้อ 5.1)  <br>
2️⃣ **รับ Text Embedding จาก CLIP Text Encoder**  <br>
3️⃣ **ใช้ Cross-Attention เชื่อมภาพกับข้อความ**  <br>
4️⃣ **ใช้ Encoder ลดขนาดภาพ (64×64 → 8×8)** ลดขนาด เพื่อทำให้การคำควณรวดเร็วขึ้น <br> 
5️⃣ **ใช้ Bottleneck ทำ Self-Attention** ส่วนล่างสุดของตัว U <br> 
6️⃣ **ใช้ Decoder ขยายภาพกลับ (8×8 → 64×64)** สร้างภาพย้อนกลับ หรือ U ขาขึ้น  <br>
7️⃣ **Output เป็น Latent Space ที่ลด noise แล้ว** ใช้ Loop หลาย step ค่อยๆ สร้างภาพ <br>
8️⃣ **ส่งไปที่ VAE Decoder เพื่อสร้างภาพ 512×512** แปลงจาก Laten space ที่เป็น vector มาเป็น Pixel space RGB <br>

---
### ขั้นตอนหลักของ Encoder มี 3 กระบวนการ: <br>
1️⃣ Convolution (ดึง Feature สำคัญ) <br>
2️⃣ ReLU Activation (เพิ่มความไม่เป็นเชิงเส้นของโมเดล)  (Rectified Linear Unit) เป็นฟังก์ชัน Activation ที่ทำให้ค่าลบเป็นศูนย์ และ ช่วยให้โมเดลสามารถเรียนรู้ Feature ที่ซับซ้อนได้ดีขึ้น <br>
```
📊 Convolution Output:
[[1,  2, -1],
 [0,  1,  2],
 [1, -1,  3]]

🚀 หลังจากใช้ ReLU:
[[1, 2, 0],
 [0, 1, 2],
 [1, 0, 3]]
```


3️⃣ Max Pooling ช่วยลดขนาดของภาพ แต่ยังคง Feature ที่สำคัญ และ Max Pooling ใช้เลือกค่าที่มากที่สุดจากแต่ละโซนของภาพ  <br>
```
📊 Input Feature Map (4×4):
[[2, 3, 1, 0],
 [5, 7, 6, 1],
 [4, 6, 8, 5],
 [9, 2, 3, 6]]

🚀 Max Pooling 2×2 (Stride=2):
[[7, 6],
 [9, 8]]
```
---
## 📌 Diffusion Process (Denoising) คืออะไร? ทำงานอย่างไร? 
📜 1. Diffusion Process คืออะไร? <br>
Diffusion Process เป็นกระบวนการที่ใช้ใน Stable Diffusion, DALL·E 2, Imagen <br>
✅ เริ่มต้นจากภาพสุ่มที่มี Noise (Pure Gaussian Noise) <br>
✅ ค่อยๆ ลบ Noise ออกจากภาพ โดยใช้ U-Net และ Cross-Attention <br>
✅ ช่วยให้โมเดลสร้างภาพที่มีความคมชัดและตรงกับข้อความมากขึ้น <br>

💡 ใน Stable Diffusion → U-Net ใช้เรียนรู้ว่าควรลบ Noise แบบไหนเพื่อให้ได้ภาพที่ตรงกับ Text Prompt <br>

## 📜 2. กระบวนการของ Diffusion Process <br>
🔹 กระบวนการแบ่งออกเป็น 2 ส่วนหลัก <br>
1️⃣ Forward Diffusion (เพิ่ม Noise เข้าไป) <br>
2️⃣ Reverse Diffusion (ลบ Noise ออกทีละขั้นตอน - Denoising) <br>

![image](https://github.com/user-attachments/assets/adee9b67-c97c-480c-b495-f3e7ceed390c) <br>
REAL-WORLD DENOISING VIA DIFFUSION MODEL http://arxiv.org/pdf/2403.18103 <br>
**รูปที่ 2** ตัวอย่างการเพิ่ม Noise และ ลบ Noise เพื่อที่จะสร้างรูปใหม่

🔹 1️⃣ Forward Diffusion (เพิ่ม Noise เข้าไป) <br>
📌 ในขั้นตอนนี้ โมเดลจะฝึกให้ AI เรียนรู้ว่าถ้าเพิ่ม Noise ทีละนิด รูปภาพจะเปลี่ยนไปยังไง <br>

เริ่มต้นจากภาพจริง (x₀) <br>
เพิ่ม Noise ไปทีละเล็กน้อยจนกลายเป็น Gaussian Noise (xₜ) <br>
ใช้ [Markov Chain Process](https://www.wikiwand.com/en/articles/Markov_chain) ในการเพิ่ม Noise (Markov chain เป็นหลักการคำนวณความน่าจะเป็น เพื่อคาดการล่วงหน้า) <br>
✅ Forward Diffusion ใช้ Gaussian Noise Formula ดังรูปตัวอย่าง <br>

![image](https://github.com/user-attachments/assets/48d40ba9-1ac4-4e42-88b7-b5ca826013db) <br>
ตัวอย่างโมเดลในการเพิ่ม Noise <br>

🔹 2️⃣ Reverse Diffusion (ลบ Noise ออก - Denoising) <br>
📌 ในขั้นตอนนี้ โมเดลจะเรียนรู้ว่าต้องลบ Noise ยังไงให้ได้ภาพเดิมกลับมา <br>
✅ ใช้โมเดล U-Net + Cross Attention เพื่อลด Noise ทีละ Step <br>
✅ เปลี่ยนภาพที่เต็มไปด้วย Noise ให้กลับมาเป็นภาพที่มีรายละเอียดชัดเจน <br>

📌 Reverse Diffusion ใช้ Gaussian Distribution Formula<br>
![image](https://github.com/user-attachments/assets/e8ed8422-14e5-4ab3-bc9c-e7c43103639b) <br>
ตัวอย่างโมเดลในการ ลบ Noise <br>

## 📜  สรุป <br>
Diffusion Process คือกระบวนการลบ Noise ออกจากภาพ <br>
ใช้ Gaussian Noise ในการเพิ่มและลบ Noise ออก <br>
ใช้ U-Net เป็นตัวลบ Noise ทีละ Step <br>
ต้องทำซ้ำหลายรอบ (50-1000 Steps) เพื่อให้ได้ภาพที่สมจริง <br>
เป็นกระบวนการหลักของ Stable Diffusion, DALL·E 2 และ Generative AI ทั่วไป <br>
✅ Diffusion Process เป็นหัวใจของ AI Generative Models! 🚀 <br>

# References
1. U-Net: Convolutional Networks for Biomedical Image Segmentation https://arxiv.org/pdf/1505.04597 
2. Denoising Diffusion Probabilistic Models https://arxiv.org/pdf/2006.11239
