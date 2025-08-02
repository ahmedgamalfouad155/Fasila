# 🌿 Fasila - Smart Gardening App


## 📽️ Demo
### 📱 Mobile Version:
[🔗 Click here to watch the demo video](https://drive.google.com/file/d/1AUC3LgdpSJUmDvKwD3Go0n6flmAoFqNk/view?usp=sharing)

---

## 📱 Overview

**Fasila** is a smart farming app designed to help users take care of their plants efficiently while offering a full e-commerce experience for agricultural tools and products. Whether you're a beginner or an expert in gardening, Fasila provides the guidance, tools, and smart reminders you need to succeed.

---

## 📱 Key Features

### 🔐 Authentication
- Sign up and log in using email & password or Google Sign-In.
- Integrated with **Firebase Authentication**.

### 🪴 Plant Guide & Care
- Explore a wide collection of plants with detailed care information:
  - Ideal temperature 🌡️  
  - Required humidity 💧  
  - Watering schedules 🕒  
- Add your own plants to the **"My Plants"** section and receive personalized care tips.
- Set up **automatic reminders** for watering and other plant needs.

### 🛒 E-Commerce Store
- Browse and purchase farming tools directly from the app.
- Products are categorized for easy navigation.
- Choose your delivery address:
  - Manual input 📝  
  - Or via **Google Maps** integration 📍
- **Online payment** supported via **PayPal** 💳

### ❤️ Wishlist & Cart
- Add favorite plants and tools to your wishlist.
- Add products to your cart and complete orders smoothly.

### ⏰ Notifications & Smart Alarms
- Schedule notifications to remind you when it's time to care for each plant.
- Fully automated alarm system based on user preferences (day, time, plant type).

### 🎨 Dark & Light Theme Support
- Toggle between **dark mode** and **light mode** manually or automatically.

### 🧩 Smooth Animations
- Beautiful and seamless animations for all navigation and UI interactions.

---

## 🚧 Roadmap (Coming Soon)
- Advanced plant disease detection using camera 📷
- AI-powered suggestions for seasonal planting 🤖
- Social features: Share your plant collection with friends 🌱

---

## 🛠 Built With
- **Flutter** 💙
- **Firebase (Auth, Firestore, Cloud Messaging)**
- **Google Maps API**
- **PayPal API**
- **Hive (Local Storage)**
- **flutter_local_notifications**
- **Bloc / Cubit State Management**
- Clean Architecture & Responsive Design

---

## 📷 Demo & Screenshots
> Coming soon: UI showcase and feature walkthrough.

---

## 📩 Contact
For collaboration, feedback, or contributions:  
**Ahmed Gamal** – [LinkedIn](www.linkedin.com/in/ahmed-gamal-29b93a218)

---

> Made with 💚 by a plant lover and Flutter enthusiast.
---

## 📂 Repository Structure
```bash
lib/
├── core/
│   ├── constants/
│   ├── theme/
│   ├── utils/
│   ├── router/
│   └── widgets/
│
├── features/
│   ├── auth/
│   │   ├── data/
│   │   └── presentation/
│   │       ├── cubit/
│   │       ├── screens/
│   │       └── widgets/
│
│   ├── plant/
│   │   ├── data/
│   │   └── presentation/
│   │       ├── cubit/
│   │       ├── screens/
│   │       └── widgets/
│
│   ├── shop/
│   │   ├── data/
│   │   └── presentation/
│   │       ├── cubit/
│   │       ├── screens/
│   │       └── widgets/
│
│   └── cart/
│       ├── data/
│       └── presentation/
│           ├── cubit/
│           ├── screens/
│           └── widgets/
│
├── main.dart
