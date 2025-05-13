# 📘  การควบคุม Prompt ด้วย CLIP และ T5XXL สำหรับ Flux.1 และ ComfyUI

## 🔍 1. ความแตกต่างระหว่าง `CLIP` และ `T5XXL`

| ด้านเปรียบเทียบ | CLIP (clip_l_X) | T5XXL (t5xxl_X) |
|------------------|------------------|------------------|
| ประเภทโมเดล | Text Encoder | Text Decoder |
| โครงสร้าง | 12 Layer | 24 Layer |
| การตีความ | Token-level / กลุ่มคำ | Sentence-level / ความหมายรวม |
| จุดเด่น | จับ keyword และลักษณะ object | ตีความอารมณ์ บริบท และเรื่องราว |
| เหมาะกับ | prompt สั้น, object-focused | prompt ยาว, emotion-rich |
| ใช้ tokenizer แบบ | BPE (CLIP tokenizer) | SentencePiece |

## 📌 2. ตัวอย่างการปรับค่าเพื่อให้ได้ภาพ “เศร้าอย่างลึก”

Prompt:
```text
a woman sitting alone in a dark room, crying in silence, sorrow filling the air
```

การปรับค่าที่แนะนำ:

```plaintext
clip_l_0 = 1.8      # "woman"
clip_l_3 = 1.2      # "dark room"
clip_l_9 = 1.5      # mood
clip_l_10 = 2.0     # abstract tone

t5xxl_6 = 1.5
t5xxl_7 = 2.0       # emotion/sorrow tone
t5xxl_8 = 1.6
```

## 🧠 3. คำตอบว่า “ต้องใช้แค่ 12 คำใน Prompt เพราะมี 12 Layer?” คือ ❌ **ไม่ใช่**

- Prompt สามารถมีได้ถึง ~77 token
- แต่ token แรก ๆ มีอิทธิพลสูง เพราะเข้าสู่ layer มากที่สุด
- `a`, `the`, `an` = token แน่นอน
- Token ≠ คำ (เช่น “photorealistic” อาจแยกเป็น 3 token)

## 📊 4. ตารางการใช้ CLIP และ T5XXL พร้อมคำแนะนำ Layer

ดูรายละเอียดใน: [📄 ตารางเปรียบเทียบการใช้ CLIP vs T5XXL พร้อม Keywords](#)

ตัวอย่าง:

| เป้าหมาย | ใช้ CLIP | ใช้ T5XXL | Layer ที่ควรปรับ | Keywords |
|----------|----------|------------|------------------|----------|
| อารมณ์เศร้า | 🟡 | ✅✅ | t5xxl_6–10 | crying, sorrow |
| แสงภาพยนตร์ | ✅ | ✅ | clip_l_9–10, t5xxl_10–13 | cinematic light |

## 📚 5. Reference และแหล่งอ้างอิง

- Dalvi et al. (2021). *What Do NLP Transformers Learn?* — [arXiv:2004.10813](https://arxiv.org/abs/2004.10813)
- CLIP paper by OpenAI — [arXiv:2103.00020](https://arxiv.org/abs/2103.00020)
- HuggingFace CLIP Tokenizer: https://huggingface.co/openai/clip-vit-base-patch32
- Aman Arora: *Understanding CLIP* [Blog Post](https://amaarora.github.io/posts/2023-03-11_Understanding_CLIP_part_2.html)
- Prompt ablation method via Reddit / Flux Discord

## 🛠️ 6. เครื่องมือที่แนะนำ

- `Flux Attention Seeker` (ComfyUI) สำหรับควบคุม layer-specific attention
- Tokenizer viewer (`transformers` Python library)
- Prompt Scheduler สำหรับวิดีโอ (ใช้กับ AnimateDiff หรือ Keyframe Animation)
- Prompt Split (CLIP+T5) ใน Flux.1
- https://platform.openai.com/tokenizer
![alt text](<Screenshot 2025-05-13 at 01.06.59.png>)

## ✅ 7. สรุปแนวทางใช้งาน

| ต้องการ... | ใช้ CLIP | ใช้ T5XXL |
|-------------|----------|------------|
| สิ่งของชัดเจน | ✅ | ❌ |
| ฉาก/แสง/มุมกล้อง | ✅ | 🟡 |
| อารมณ์/เรื่องราว | 🟡 | ✅✅ |
| คำซับซ้อน/เปรียบเทียบ | ❌ | ✅✅ |
| Prompt ยาว ๆ | 🟡 | ✅✅ |



| เป้าหมาย                                           | ใช้ CLIP (clip_l_X)                   | ใช้ T5XXL (t5xxl_X)                       | Layer ที่ควรปรับ (แนะนำ)    | Keywords (EN)                        |
|----------------------------------------------------|---------------------------------------|-------------------------------------------|-------------------------------|-------------------------------------|
| ให้เห็นสิ่งของชัดเจน (เช่น ผู้หญิง, โต๊ะ, ดาบ)              | ✅ ดีเยี่ยม                             | 🟡 อาจไม่ตรงวัตถุ                           | clip_l_0–2                     | girl, sword, object, armor           |
| ควบคุมรูปร่าง/ท่าทางของวัตถุ                            | ✅ ใช้ได้ดี                             | 🟡 ไม่ใช่จุดแข็ง                             | clip_l_1–3                     | pose, gesture, hands, tilt           |
| ให้เกิดอารมณ์ในภาพ (เช่น เศร้า, หวาดกลัว)               | 🟡 มีผลบ้าง แต่ไม่ลึก                     | ✅ ดีมาก                                  | t5xxl_6–9, clip_l_9            | crying, sad, fear, sorrow            |
| สร้างฉากบรรยากาศ (เช่น ความเงียบ, ความโดดเดี่ยว)       | 🟡 เบา ๆ ได้                          | ✅ ดีเยี่ยม                                 | t5xxl_5–8                      | silence, emptiness, foggy air        |
| ให้ภาพตรงกับคำสั้น ๆ เช่น 'dark room'                  | ✅ เหมาะมาก                          | 🟡 ไม่เน้นคำเดี่ยว                           | clip_l_0–1                     | dark room, candle, night             |
| ให้ภาพตรงกับประโยคซับซ้อน เช่น 'a girl lost in memory' | ❌ ไม่เหมาะเท่าไร                      | ✅ ตีความได้ครบ                            | t5xxl_4–10                     | a woman waiting by the window        |
| ปรับภาพให้ได้โทนแบบภาพยนตร์                           | ✅ โดยเฉพาะ clip_l_9–10              | ✅ ได้ mood ลึก                            | clip_l_9–10, t5xxl_10–13       | cinematic light, dramatic mood       |
| ทำให้ prompt ที่ยาวมีผลมากขึ้น                          | 🟡 บางส่วน (คำต้น ๆ)                   | ✅ เหมาะกับ text ยาว                      | t5xxl_4–9                      | long poetic prompt, description      |
| ดึงความหมายที่ซ่อนอยู่ในคำเปรียบเทียบ                     | ❌ ไม่ตีความเปรียบเทียบ                  | ✅ เหมาะมาก                              | t5xxl_8–11                     | hope fades, soul dissolves           |
| ให้ model ตีความอารมณ์ของประโยคทั้งหมด                 | 🟡 ได้บ้าง ถ้าอยู่ในคำท้าย                 | ✅✅ เหมาะที่สุด                            | t5xxl_6–10                     | narrative emotion, implied sadness   |
| ให้ฉากมีแสงแบบ rim light รอบตัวแบบหนัง                | ✅ โดยเฉพาะ clip_l_5–7               | ✅ t5xxl_10–13 กำหนด tone                | clip_l_5–7, t5xxl_10–13        | rim light, backlit stage             |
| ใส่ motion หรือความเคลื่อนไหวแบบ blur, slow motion    | 🟡 ได้บ้าง หากใช้ร่วมกับคำ action         | ✅ t5xxl_6–9 ช่วยเรื่อง gesture/action flow | clip_l_4–6, t5xxl_6–9          | blur, slow motion, movement trail    |
| สร้างภาพแบบฝันหรือความทรงจำ                          | 🟡 clip_l_8–10 (ฝัน)                  | ✅ t5xxl_8–11 สร้างภาพแบบ abstract memory | clip_l_9–11, t5xxl_8–11        | dreamy, faded memory, afterimage     |
| ทำให้ character มีการแสดงออกแบบ emotional subtle    | ✅ clip_l_6–9 ดีสำหรับ subtle face     | ✅ t5xxl_7–10 อ่าน emotion + nuance       | clip_l_6–9, t5xxl_7–10         | soft eyes, slight frown, subtle tear |
| แสดงความเปลี่ยนแปลงฉากแบบ transition เช่น ภาพพัง/แตก  | ✅ clip_l_7–10 เน้น visual transition | ✅ t5xxl_6–9 บรรยายการเปลี่ยนผ่าน           | clip_l_7–10, t5xxl_6–9         | cracks forming, scene fragmenting    |


