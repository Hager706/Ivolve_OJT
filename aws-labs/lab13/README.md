# 🚀 AWS Load Balancer with EC2 (Nginx & Apache)

## 📖 Overview
This project demonstrates how to set up an **AWS Application Load Balancer (ALB)** with **two EC2 instances** running **Nginx and Apache**.  

## 🎯 Architecture Diagram
![Alt text](assets/Screen8.png)

### **🛠️ Components Used**
- **VPC** with 2 public subnets  
- **2 EC2 instances** (One with Nginx, one with Apache)  
- **Application Load Balancer (ALB)** to distribute traffic  
- **Security Groups** for HTTP & SSH access  

---

## **📌 Setup Steps**
### 1️⃣ **Create a VPC & Subnets**
📷 Screenshot: 
![Alt text](assets/Screen1.png)

### 2️⃣ **Launch EC2 Instances (Nginx & Apache)**
📷 Screenshot: 
![Alt text](assets/Screen2.png)

### 3️⃣ **Test EC2 installing Nginx & Apache**
- **Nginx:** ![Alt text](assets/Screen3.png)
- **Apache:** ![Alt text](assets/Screen4.png)

### 4️⃣ **Create and Configure Target Group**
📷 Screenshot: 
![Alt text](assets/Screen5.png)

### 4️⃣ **Create and Configure Load Balancer**

📷 Screenshot: 
 ![Alt text](assets/Screen6.png)

---

## **🖥️ Access the Application**
1. Get the **Load Balancer DNS Name**:
2. Open a browser and visit:  
🎥 ![Watch the video](assets/ezgif-7a49a86015637a.gif)

---
