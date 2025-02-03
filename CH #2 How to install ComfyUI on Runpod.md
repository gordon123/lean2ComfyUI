## บทนี้เราจะมาเริ่ม Install ComfyUI บน Runpod กัน
ผมได้เตรียมไฟล์ไว้แล้ว เพื่อนๆ สามารถไปโหลดได้ที่ 

1. เพื่อน ๆ สามารถโหลดไฟล **Install_ComfyUI (test1) (1).ipynb** จากโฟลเด้อ **file script**
   ![image](https://github.com/user-attachments/assets/8a9ae345-ad6e-46ca-b94e-f81ec57dc72e)

2. อัพโหลดไปใส่ใน Jupyterlab โดยลากไปวาง ช่อง file manager ข้าง ๆ
   
   ![image](https://github.com/user-attachments/assets/fb325063-88af-4b9f-9813-3a853e1b96fc)

3. double click ไฟล์ Install comfyui แล้วกด runt scrip ที่ละเซล คล้าย ๆ Google Colab

   ![image](https://github.com/user-attachments/assets/525dc36d-2cba-47a9-bb9e-5dfa34b85b90)

4. ขึ้นแบบนี้ คือเสร็จแล้ว กด Cell ที่ 2 แล้ว กด Run เหมือนเดิม ทำไปเรื่อยๆ
   
  ![image](https://github.com/user-attachments/assets/e3032a9f-a2e1-424c-b710-5799c908aad0)
   
5. กดช่อง Script Cell ที่ 2 สังเกต แถบสีน้ำเงิน ซ้าย มือ แล้วกด ปุ่ม Run script
   
   ![image](https://github.com/user-attachments/assets/58bbd817-63f9-4229-9f4b-fb2e0c364e86)

6. เซลที่ 2 มันจะถาม Yes/No เพื่อไปต่อ ให้สัฃเกต ซ้ายมี มี โฟลเด้อ ComfyUI ไหม ถ้ามี พิม Yes ในช่อง
   ![image](https://github.com/user-attachments/assets/595f29fe-d0c5-4272-9f89-f97d5c8a6f37)

7. run script ต่อ Cell ที่ 3 ให้ กด Yes ถ้าเห็น โฟลเด้อ venv ซ้ายมือ
8. run script ต่อ Cell ที่ 4 ทดสอบ activate venv กดแทปใหม่ เครื่องหมายบวก + แล้วเรียก Terminal ขึ้นมา 
   ![image](https://github.com/user-attachments/assets/8570d70c-7dab-4d8a-91df-c28d5ad54f8a)
   
แล้ว copy คำสั่งนี้ source /workspace/venv/bin/activate ใส่ไปใน Terminal

  ![image](https://github.com/user-attachments/assets/56ab29b2-6666-42f4-b303-f61ad8af8214)
  ![image](https://github.com/user-attachments/assets/b42854c3-474d-4756-b313-9b450467eb77)

ถ้าขึ้นแบบในรูป ถือว่า โอเคผ่าน ให้กรอก Yes ใน scrip cell 4

9. cell 4 จะนานหน่อย 5-10 นาที รอ รอ รอ มันกำลังโหลด แพคแกตต่าง ๆ ถ้ามันขึ้น Yes/No ตอบ yes และ รอ อีกแปบ มันกำลัง ลง Step5
    
    ![image](https://github.com/user-attachments/assets/23fbd4e3-e210-4e29-a45f-f2c2db73eb76)

ขึ้นแบบนี้้ ถือว่า Step 5 ของ script นี้ลงโปรแกรมแล้ว ตอบ yes เพื่อไป เซลต่อไป
   ![image](https://github.com/user-attachments/assets/d5e6bfc9-e47c-43de-995e-81f10b8a5d3f)

10. Run cell 6 ของscript เพื่อลง requirement.txt ของ comfyui
**11. กลับไปหน้า terminal แล้วลองพิมพ์ คำสั่ง pip list ถ้ามีเหมือนใน ตัวอย่าง คือ ลง Comfyui เสร็จแล้ว**
---
# ลง Custom Manager ต่อ
1. กดที่่ Cell ที่ 6 แล้ว กด Run เหมือนเดิม แปบนึง แล้ว yes เพื่อยืนยัน
![image](https://github.com/user-attachments/assets/74284539-a871-4f0c-8d8c-5b0f81a65b26)

2. เป็นอันเสร็จเรียบร้อย ของการลง ComfyUI และ Custom nodes manager
3. ทดลอง run comfyUI ให้เพื่อน ๆ กระโดด ไป ล่างสุด แล้ว run cell ที่ 18 (เปิดครั้งแรก มันจะนาน หน่อย)

![image](https://github.com/user-attachments/assets/65c647e3-8a43-4223-a758-d104fa2f7e83)

จนเห็นประมาณนี้ 
![image](https://github.com/user-attachments/assets/87256a4e-b2f4-40ee-b972-23ebc0151be2)

ไปหน้า Runpod ของเรา
copy ip address และ port เหมือนในตัวอย่าง ในช่อง ที่มี 8188 กำกับ
![image](https://github.com/user-attachments/assets/11ade639-7bf8-4c9c-8e14-cea059caf9c4)

ตัวอย่างในรูป 78.130.201.2:18814 ไปวางที่หน้าเว๊ป browser
![image](https://github.com/user-attachments/assets/143776b5-7e37-41f6-9e0b-9ce31e91bfc3)

Now we get brand new ComfyUi installed on Runpod GPU server
**If you are new to use Runpod and need to support me, 
you can click my affiliate link here [runpod.io](https://runpod.io?ref=c0v5p0ys) Thank you >D**


