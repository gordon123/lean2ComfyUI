# lean2ComfyUI 
(เพิ่งหัดเรียนรู้ จากแหล่งความรู้ทั่วไป เหมาะกับคนทั่วไปที่เพิ่งอยากหัดเล่น ComfyUI)

เป็นพื้นที่เก็บ ความรู้ที่ลูกพักลักจำชาวบ้าน มารวมกันไว้
ส่วนตัวไม่มีคอมแรง เลยใช้บริการคอมพิวเตอร์บน cloud service; อย่างเช่น [runpod.io](https://runpod.io?ref=c0v5p0ys) เป็นหลัก
## การสมัคร Runpod.io
เวลาใช้ Runpod เราจะจ่ายตามเวลาที่เท่าใช้ทรัพยากร ต่อ ชั่วโมง
ปกติผมจะใช้ที่ราคา ประมาณ 0.2 - 0.4 USD ต่อชั่วโมง(ใช้ต่อเนื่องประมาณ 6 ชั่วโมง จ่ายไป ประมาณ 2.5 - 3.5 USD หรือประมาณ 85 บาท/ 6 ชั่วโมง ซึ่งถูกมากเทียบกับต้องไปใช้คอม สเปคสูง)
แลกมาด้วยการสร้าง ภาพสวย ๆ ด้วย FLUX โมเดลตัวใหญ่ ๆ เพื่อได้ภาพที่เราต้องการ
**ย้ำว่าหลังจากเรา ทำงานเสร็จแล้ว เราจะลบ Pod ของเรา เพื่อเราจะได้ไม่ต้องเสียเงิน ค่าเก็บไฟล์** ไว้จะแนะนำอีกที ว่าต้องจัดการยังไง

- **สมัครด้วย Gmail:**
- 
- **เติมเงิน:** ขั้นต่ำ ประมาณ 10 USD
  ![image](https://github.com/user-attachments/assets/e1aebf51-0476-4ee8-9658-2add9c27726a)

- **เลือก GPU cloud:**
  ![image](https://github.com/user-attachments/assets/27493015-cd49-4fea-89fe-34516a35a452)

- เลือก Community cloud: เหตผล มันจะราคาถูกกว่า (secure cloud บางอันก็ดี แต่งคนจะแข่งกันใช้เยอะ ใครไม่ติดปัญหาเรื่องค่าใช้จ่าย ก็ไม่ต้องคิดเรื่องนี้ และเหมาะกับคนที่จะเช่าเป็นรายเดือนหรือมีแพลนจะทำ ประมาณ web service) แต่ในบทความนี้เหมาะกับคนใหม่ เพิ่งหัดใช้
  
- เลือกเครื่องที่เราจะใช้ งาน หา spect ประมาณนี้ Vram 20GB ขึ้นไป ram 60GB ขึ้นไป ราคา 0.5-0.2USD/ชั่วโมง และ Low, Medium, Hight คือ speed การดาวโหลดไฟล์ ถ้าเราต้องโหลด โมเดลบ่อย ๆ เยอะ ก็ควรหาเครื่องที่ medium หรือ high ถ้าส่วนใหญ่ มีแต่ Low ก็ใช้ได้เหมือนกัน นอกนั้น 2x หน้าชื่อ การ์ดจอ คือจำนวนการร์ดจอที่ใช้ ส่วนตัวพยายามหาตัว ที่ การ์ดจอตัวเดียว แต่ มีvRam มากกว่า20GB รู้สึกจะเร็วกว่า ต้องลอง ๆ ดูครับ
  ![image](https://github.com/user-attachments/assets/95191c1b-5f0c-44d3-9ec0-a6824b8f2276)

- เลือก Template: เลื่อนลงมาล่าง ๆ ๆ หาปุ่ม Template 
  ![image](https://github.com/user-attachments/assets/8ae9a710-35de-4b56-8725-f08b725df780)

ผมเลือกใช้เวอชั่น runpod/pytorch:2.2.0-py3.10-cuda12.1.1-devel-ubuntu22.04 อันนี้ มันจะมี Jupyter และ Web terminal ให้เราค่อยข้างสะดวกการจัดการไฟล์
  ![image](https://github.com/user-attachments/assets/6866b2f0-21b7-4dec-8fe4-bb4f71b4e208)

หรือเวอชั่นอื่น ๆ ถ้าใครใช้ Docker เป็น ส่วนตัวผมยังใช้ Docker ไม่เป็น เลยเลือกใช้ผ่าน Template อันที่เป็น Pytorch - Jupyter (คล้าย ๆ Google Colab)

- ในเทมเพลต ใส่ข้อมูลประมาณนี้ disk ขั้นต่ำ 120GB และ Port 8188 เพื่อไว้เปิด WebUI
  ![image](https://github.com/user-attachments/assets/7402ed67-3e2e-4418-8871-c28f6bb62daa)


- รอออออออ  มัน install virtual machain ให้เราซักแปบ
  
![image](https://github.com/user-attachments/assets/d7a9a6cb-181e-4a3a-97de-190829ad96a4)

- เห็น เขียว ๆ Runing คือ พร้อมใช้งาน
  ![image](https://github.com/user-attachments/assets/f9a541d3-6a68-4937-8b4a-9e99784ee9ff)

  ปุ่มเขียวๆ Runing
  ![image](https://github.com/user-attachments/assets/07acd97c-908e-4b60-a7bb-1bf010b95a60)

  กด Connect
  ![image](https://github.com/user-attachments/assets/6c641237-6332-4924-a94d-6a622cfbf8d4)

  Jupyter สีเขียว ๆ Ready พร้อมใช้งาน
  ![image](https://github.com/user-attachments/assets/5a5a93c3-428e-4d77-ade6-0360c9962d95)

  **พร้อมใช้งานแล้ว อ่านต่อการ Instqll ComfyUI ||>>>>**
If you are new to use Runpod and need to support me you can click my affiliate link here [runpod.io](https://runpod.io?ref=c0v5p0ys)
  












