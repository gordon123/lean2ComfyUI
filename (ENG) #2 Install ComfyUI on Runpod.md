## In this section, we will install ComfyUI on Runpod  
I have prepared the necessary files. You can download them from the following steps:  
Download this script and upload to Jupyterlab
https://github.com/gordon123/lean2ComfyUI/blob/f6d206900baabd3084d036a92c907102aba66265/file%20script/Install_ComfyUI_on_RUNPOD.ipynb

### 1. Download the Install ComfyUI file  
- Download the **Install_ComfyUI (test1) (1).ipynb** file from the **file script** folder.  
  ![image](https://github.com/user-attachments/assets/8a9ae345-ad6e-46ca-b94e-f81ec57dc72e)  

### 2. Upload the file to JupyterLab  
- Drag and drop the file into the **file manager** panel on the left side.  
  ![image](https://github.com/user-attachments/assets/fb325063-88af-4b9f-9813-3a853e1b96fc)  

### 3. Open and run the file  
- Double-click **Install_ComfyUI**, then click **Run script** for each cell (similar to Google Colab).  
  ![image](https://github.com/user-attachments/assets/525dc36d-2cba-47a9-bb9e-5dfa34b85b90)  

### 4. If you see this, it's done  
- Click **Cell 2**, then press **Run** and continue step by step.  
  ![image](https://github.com/user-attachments/assets/e3032a9f-a2e1-424c-b710-5799c908aad0)  

### 5. Run the script in Cell 2  
- Check for the **blue highlight** on the left, then press the **Run script** button.  
  ![image](https://github.com/user-attachments/assets/58bbd817-63f9-4229-9f4b-fb2e0c364e86)  

### 6. Check if the ComfyUI folder exists  
- Cell 2 will prompt **Yes/No**  
- Look at the left panel to see if the **ComfyUI folder** is present.  
- If it exists, **type Yes** and press Enter.  
  ![image](https://github.com/user-attachments/assets/595f29fe-d0c5-4272-9f89-f97d5c8a6f37)  

### 7. Run the script in Cell 3  
- If you see the **venv folder** on the left, press **Yes**  

### 8. Activate the virtual environment (venv)  
- Open a new tab (click the **+** icon).  
- Go to **Terminal**.  
  ![image](https://github.com/user-attachments/assets/8570d70c-7dab-4d8a-91df-c28d5ad54f8a)  

- Copy the following command into the **Terminal** and press Enter:  
  ```
  source /workspace/venv/bin/activate
  ```
  ![image](https://github.com/user-attachments/assets/56ab29b2-6666-42f4-b303-f61ad8af8214)  
  ![image](https://github.com/user-attachments/assets/b42854c3-474d-4756-b313-9b450467eb77)  

- If you see the output like this, it means **it's working**.  
- Go back to **Script Cell 4** and type **Yes**.  

### 9. Wait for the script to complete (5-10 minutes)  
- The script will install various packages. If it prompts **Yes/No**, type **Yes** and wait.  
  ![image](https://github.com/user-attachments/assets/23fbd4e3-e210-4e29-a45f-f2c2db73eb76)  

- If you see this, **Step 5 is completed**.  
- Type **Yes** to proceed to the next cell.  
  ![image](https://github.com/user-attachments/assets/d5e6bfc9-e47c-43de-995e-81f10b8a5d3f)  

### 10. Install requirements.txt  
- Run **Cell 6** to install the dependencies for ComfyUI.  

### 11. Verify installation  
- Go back to the **Terminal**.  
- Type the following command:  
  ```
  pip list
  ```
- If you see a list of installed packages, **ComfyUI installation is complete**.  

---

## 🔧 Installing Custom Manager  
### 1. Run **Cell 6**  
- Click **Run**, then type **Yes** to confirm.  
  ![image](https://github.com/user-attachments/assets/74284539-a871-4f0c-8d8c-5b0f81a65b26)  

### 2. **ComfyUI and Custom Nodes Manager installation is complete!**  

### 3. Test running ComfyUI  
- Go to **Cell 8** and click **Run**.  
  - The first startup might take a bit longer.  
  ![image](https://github.com/user-attachments/assets/65c647e3-8a43-4223-a758-d104fa2f7e83)  

- If you see this, **ComfyUI is ready to use!**  
  ![image](https://github.com/user-attachments/assets/87256a4e-b2f4-40ee-b972-23ebc0151be2)  

---

## 🚀 Running ComfyUI  
1. Go to your **Runpod dashboard**.  
2. Copy the **IP Address and Port (8188)**.  
  ![image](https://github.com/user-attachments/assets/11ade639-7bf8-4c9c-8e14-cea059caf9c4)  

3. Open **your web browser**.  
4. Paste the IP Address, for example:  
   ```
   78.130.201.2:18814
   ```
   ![image](https://github.com/user-attachments/assets/143776b5-7e37-41f6-9e0b-9ce31e91bfc3)  

---

🎉 **Now you have a brand-new ComfyUI installed on a Runpod GPU Server!** 🎉  

**If you are new to Runpod and would like to support me,**  
you can use my affiliate link here:  
[runpod.io](https://runpod.io?ref=c0v5p0ys)  

**Thank you! >D**
