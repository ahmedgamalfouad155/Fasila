# 🌿 Fasila - Smart Gardening App


## 📽️ Demo
### 📱 Mobile Version:
[🔗 Click here to watch the demo video](https://drive.google.com/file/d/1sU7QVmWZyRIJzjpO3UJnSe69zyKxZSbf/view?usp=sharing)

---

## 📱 Overview

Fasila is a smart gardening assistant that helps users grow their favorite plants with confidence and ease. Whether you're a beginner or a seasoned gardener, Fasila provides all the necessary guidance for successful plant care — including information about ideal temperature, humidity, and watering schedules for each plant.

In addition to plant care features, Fasila includes a built-in agricultural **e-commerce store** where users can browse, favorite, and purchase farming tools and supplies. Products are categorized for easier navigation, and users can add items to their cart and choose their delivery address either manually or via Google Maps.

Fasila combines education, guidance, and shopping in one place — making gardening smarter, simpler, and more accessible than ever.


---

## 🌱 Features

### 🔐 Authentication
- Simple and clean authentication flow (Sign up / Login).
- Designed to integrate Firebase in future releases.

### 🪴 Plant Guide & Tracking
- Browse a wide variety of plants with detailed information:
  - Required temperature 🌡️
  - Ideal humidity 💧
  - Watering schedule 🕒
- Add your plant to the **"My Plants"** section and receive personalized care instructions.
- Set **reminders** to stay on top of your plant care routine.

### 🛒 E-commerce Shop
- Built-in **agricultural tools store** to buy planting supplies.
- Products are organized by category for easier browsing.
- Supports two methods for entering shipping address:
  - Manual entry 📝
  - Google Maps location picker 📍

### ❤️ Favorites & Cart
- Add your favorite **plants** and **products** to the favorites list.
- Add products to your **cart** and proceed to checkout when ready.

---

## 🧠 Tech Stack

- **Flutter**
- **State Management:** Cubit (Bloc)
- **Architecture:** MVVM (Model-View-ViewModel)
- **Local Data Only** (Future plan to integrate Firebase for real-time data and cloud sync)
- **Responsive UI** with clean modular code
- **Google Maps Integration** for address selection

---

## 🚧 Roadmap

- [ ] Integrate **Firebase Authentication**
- [ ] Connect to **Firebase Firestore** for real-time plant data
- [ ] Add **push notifications** for plant care reminders
- [ ] Implement **payment gateway** for e-commerce
- [ ] Improve accessibility & localization (multi-language support)

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
