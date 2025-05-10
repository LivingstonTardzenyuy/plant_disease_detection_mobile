# 🌱 Plant Disease Detection System - Mobile App

**A cutting-edge AI-powered mobile application for detecting plant diseases using smartphone cameras or drone-captured images.**

---

## 📌 Table of Contents
- [Features](#-features)
- [Screens](#-screens)
- [Tech Stack](#-tech-stack)
- [Architecture](#-architecture)
- [Setup](#-setup)
- [Contributing](#-contributing)
- [License](#-license)

---

## 🌟 Features
✅ **AI-Powered Disease Detection**
- Instant identification of 10+ plant diseases
- Confidence scoring and visual symptom highlighting

✅ **Multi-Capture Modes**
- 📱 Smartphone camera scans
- 🚁 Drone-assisted field mapping (GPS-integrated)
- 📁 Gallery upload for batch processing

✅ **Farmer-Centric Tools**
- Treatment recommendations (organic/chemical)
- Disease history tracking with filters
- Offline mode for remote areas

✅ **Global Reach**
- 🌐 English & French language support
- Region-specific disease databases

---

## 📱 Screens

### **1. Authentication**
| Screen | Purpose | Key Components |  
|--------|---------|----------------|  
| **Login** | User authentication | Email/password fields, social login |  
| **Signup** | Account creation | Role selection, T&C agreement |  
| **Forgot Password** | Password recovery | Email validation, OTP flow |  

### **2. Core Functionality**
| Screen | Purpose | Key Components |  
|--------|---------|----------------|  
| **Home** | Dashboard | Quick actions, recent scans |  
| **Scan Options** | Capture method selection | Camera/drone/gallery buttons |  
| **Camera Scan** | Live plant analysis | Viewfinder, capture button |  
| **Results** | Diagnosis report | Disease visuals, treatment plan |  
| **History** | Past scans | Search/filter by date/crop |  

### **3. Drone Integration**
| Screen | Purpose | Key Components |  
|--------|---------|----------------|  
| **Drone Control** | Field mapping | Google Maps, boundary drawing |  
| **Live Feed** | Real-time monitoring | Video stream, capture triggers |  

### **4. Settings & More**
| Screen | Purpose | Key Components |  
|--------|---------|----------------|  
| **Profile** | User management | Editable details, logout |  
| **Language** | Localization toggle | EN/FR selector |  
| **Notifications** | Alert preferences | Disease outbreak toggles |  

---

## 🛠 Tech Stack
**Frontend**
- Flutter (iOS/Android)
- GetX (State management + Routing)
- Google Maps SDK

**Backend**
- Django REST Framework
- PostgreSQL
- Firebase Storage (for images)

**AI/ML**
- TensorFlow Lite (Mobile)
- TensorFlow Serving (Cloud)

**DevOps**
- Dockerized deployment
- AWS EC2/GCP Compute

---

## 🏗 Architecture
```mermaid  
flowchart LR  
    A[Mobile App] -->|HTTP| B[Django Backend]  
    B -->|gRPC| C[TensorFlow Serving]  
    B --> D[(PostgreSQL)]  
    A --> E[Firebase Storage]  
    A --> F[Drone Controller]  
```  

**Key Flows:**
1. Image capture → Preprocess (Mobile) → Upload → AI Inference → Results
2. Drone scan → Geo-tagged image stream → Batch processing

---

## 🚀 Setup
### **Prerequisites**
- Flutter 3.19+
- Python 3.10+
- PostgreSQL 14+

### **Installation**
```bash  
# Clone repo  
git clone git@github.com:Signeemmanuel/Plant-Disease-Detection-System.git  

# Mobile app  
cd ./Plant-Disease-Detection-System/plant_disease_detection_mobile  
flutter pub get  

# Backend  
cd ./Plant-Disease-Detection-System/plant_disease_detection_mobile  
pip install -r requirements.txt  
```  

### **Environment Variables**
Create `.env` in `/backend`:
```ini  
DATABASE_URL=postgres://user:pass@localhost:5432/plantdb  
AI_MODEL_URL=http://localhost:8501  
```  

---

## 🤝 Contributing
1. Fork the project
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Submit a PR with:
    - Test coverage
    - Updated documentation

---

## 📜 License
MIT © 2024 [Your Name]

--- 

**🌐 Download APK/IPA** | **📧 Contact Team** | **🐛 Report Bugs**

[![Flutter](https://img.shields.io/badge/Flutter-3.19-blue)](https://flutter.dev)  
[![GetX](https://img.shields.io/badge/GetX-4.6-brightgreen)](https://pub.dev/packages/get)

--- 

**Empowering farmers with AI-driven insights – one leaf at a time!** 🌿🔍

---

### 🎨 UI Preview
| ![Login](mockups/login.png) | ![Home](mockups/home.png) | ![Results](mockups/results.png) |  
|----------------------------|---------------------------|---------------------------------|  

*(Replace with actual screenshot paths)*

For detailed design specs, see our [Figma file](https://figma.com/your-link).