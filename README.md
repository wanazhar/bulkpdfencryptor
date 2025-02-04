# 🌟 Bulk PDF Encryptor with GUI  

A simple web app + script for those who prefer a graphical interface over the command line when using **QPDF**.  

## 📂 Folder Structure  

    📁 BulkPDFEncryptor
    │── 📁 InputPDF      # Place your PDFs here  
    │── 📁 OutputPDF     # Encrypted files will be saved here  
    │── 📁 Program       # QPDF files go here  
    │   │── 📁 bin       # Contains qpdf.exe  
    │   │── 📁 include  
    │   │── 📁 lib  
    │   │── 📁 share  
    │── 🔹 encrypt.hta   # Main GUI file  
    │── 🔹 encrypt.vbs   # Script to handle encryption  

## 🛠️ Setup Instructions  

1. **Download QPDF** from [qpdf source](https://qpdf.sourceforge.io/) and extract it into the `Program` folder.  
2. Ensure `qpdf.exe` is placed inside the `Program/bin` folder.  
3. Place the PDFs you want to encrypt inside the `InputPDF` folder.  
4. Run `encrypt.hta` to open the GUI and start encrypting your PDFs.  

## 🚀 Features  

✔️ No need for command-line usage  
✔️ Simple drag-and-drop folder structure  
✔️ Uses QPDF for secure PDF encryption  
