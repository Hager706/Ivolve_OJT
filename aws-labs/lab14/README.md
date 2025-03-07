# **AWS S3 CLI Lab**  
This project demonstrates how to use the AWS CLI to interact with Amazon S3, including:  
- Creating an S3 bucket  
- Configuring permissions  
- Uploading and downloading files  
- Enabling versioning  
- Enabling logging  

---

## **📌 Step 1: Create an S3 Bucket**  
📸![Alt text](assets/pic1.png)

**Verify bucket creation:**  
 📸![Alt text](assets/pic2.png)

---

## **📌 Step 2: Configure Permissions**  
**To make (Block Public Access):**
 📸![Alt text](assets/pic3.png)


**add a policy allowing full permission  to a specific ip address(my ip):**
 📸![Alt text](assets/pic13.png)
 
   1️⃣ Before appling policy 

   📸![Alt text](assets/pic12.png)
   2️⃣ After appling policy

   📸![Alt text](assets/pic14.png)

---

## **📌 Step 3: Upload a File to the Bucket**  
**Upload image to the bucket:**
 📸![Alt text](assets/pic4.png)

**Verify upload:** 
 📸![Alt text](assets/pic5.png)

---

## **📌 Step 4: Download a File from the Bucket**  
 📸![Alt text](assets/pic6.png)

---

## **📌 Step 5: Enable Versioning**  
 📸![Alt text](assets/pic7.png)


 **Verify Versioning:**  
 📸![Alt text](assets/pic8.png)

---

## **📌 Step 6: Enable Logging**  
### **1️⃣ Create a Logging Bucket (If Not Already Created)**
```sh
aws s3 mb s3://s3-logging-bucket-s3-lab14-logs
```
### **2️⃣ Attach a Bucket Policy to Allow Logging**
 📸![Alt text](assets/pic9.png)

### **3️⃣ Enable Logging on the Source Bucket**
 📸![Alt text](assets/pic10.png)
 
 Verify Logging: 
 📸![Alt text](assets/pic11.png)

---

## **🎯 Summary**  
✔ Created an S3 bucket  
✔ Configured permissions  
✔ Uploaded & downloaded files  
✔ Enabled versioning  
✔ Enabled and verified logging  

---


