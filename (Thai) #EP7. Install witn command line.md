1. เปิด Jupiter notebook ใน Runpod <br>
2. เปิด Terminal กดที่ไอคอนนี้ <br><br>![icon terminal on Jupiternotebook](<Screenshot 2025-04-08 at 17.36.27.png>)
3. ก๊อปปี้ โค้ดอันนี้ เอาไปวางที่ commandline ใน terminal<br><br>
```
git clone https://github.com/comfyanonymous/ComfyUI.git
```

![git clone Comfyui](<Screenshot 2025-04-08 at 17.41.24.png>) <br><br>
4. สร้าง Virtual environment ด้วยคำสั่ง 
```
python -m venv (ชื่อโฟลเด้อ เช่น myvenv)
python -m venv myvenv
```
สังเกตเมนูซ้ายมือจะมี โฟลเด้อ myvenv
![venv](<Screenshot 2025-04-08 at 17.50.21.png>)<br>

5. active virtual environment
```
source myvenv/bin/activate 
```
![activate venv](<Screenshot 2025-04-08 at 18.03.17.png>) <br>

6. Install pytorch <br>
ใครใช้ การ์ดจอ RTX 30xx 40xx ก๊อบโค้ดนี้  <br>
 PS: เลือก Template เช่น runpod/pytorch:2.1.0-py3.10-cuda11.8.0-devel-ubuntu ...  <br>
```
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu126
```

ใครใช้ การ์ดจอ RTX 50xx ก๊อบโค้ดนี้ (Nightly version)  <br>
PS: เลือก Runpod template version runpod/pytorch:2.8.0-py3.11-cuda12.8.1-cudnn-devel-ubuntu22.04 .... <br>
```
pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/nightly/cu128
```
รอ จนมันขึ้น  <br>
(myvenv) root@f857243fd970:/workspace#  <br>

7. เข้าไปในโฟลเดอร์ ComfyUI จาก terminal ด้วยคำสั่งข้างล่างนี้
* หรือ อาจจะ พิมพ์ cd C ตามด้วยกดปุ่ม tab มันจะauto complete ชื่อ Folder ให้
```
cd ComfyUI
```
8.  install requirement <br> 

```
pip install -r requirements.txt
```

9. เข้าไปใน folder custom_nodes
```
cd custom_nodes/
```
แล้ว Git clone custom manager 
```
git clone https://github.com/Comfy-Org/ComfyUI-Manager.git
```

10. ออก จาก foler custom_nodes
```
cd ..
```
11. run server comfyui
```
python main.py --listen
```

![contratulations!!](image-10.png)
