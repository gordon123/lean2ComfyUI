1. สำหรับ ใครจะ install ComfyUI บน Runpod สามารถดูวิธีกาลใช้แบบละเอียดได้ใน [youtube ep.1](https://youtu.be/KvZRuwcZ3Is?si=_zS3CbwGiDEoAhId) ผ่าน Script ด้วย Jupyter, หรือ ทำตาม ep.12 ใช้ script แบบ command line ตามอ่านได้ในบทนี้

2. สร้าง vritual environment ชื่อ venv
```
python -m venv venv

และก็ activate venv

source venv/bin/activate
```

3. ดาวโหลด Script จาก [learn2comfyUI](https://github.com/gordon123/lean2ComfyUI/tree/main/file%20script)
```
สำหรับ การ์ดจอ RTX30xx 40xx
install_rtx30_40.sh

หรือ 

สำหรับ RTX50xx
install_rtx50.sh

ใช้ คำสั่ง bash ตามด้วยชื่อไฟล์ เช่น

bash install_rtx50.sh
```

4. รอ 3-5 นาที แล้ว เริ่ม start comfyUI 
```
cd ComfyUI

python main.py --listen
```


1.3B parameter เร็วคุณภาพ น้อย เอาไว้ทดสอบ
14B Parameter ช้ามากกกกกกกก เอาไว้ Final project

### สูตรคำนวณ FPS & Videl Length
ตัวอย่าง
เช่น 16 FPS  สำหรับ คลิป 5 วินาที

```
16FPS x 5sec +1 =  81 Length ใส่เลขนี้ ใน Latent node
```
สูตรการต่อnode 


## T2V = Text to video

## i2V = Image to video

# Wan2.1 Fun

## Control
1.3B
14B

## Inpaint
1.3B
14B

## Control Camera
1.3B
14B