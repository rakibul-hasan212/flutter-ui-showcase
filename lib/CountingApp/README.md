# 🔢 Flutter Counting App

<p align="center">
  <img src="https://img.shields.io/badge/Framework-Flutter-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Language-Dart-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Type-UI_Demo-green?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Status-Active-orange?style=for-the-badge"/>
</p>

---

## 📌 Overview

**Flutter Counting App** is a simple and interactive Flutter UI project that demonstrates how state changes work in a mobile application.

This project allows users to increase or decrease a number using buttons, helping beginners understand core Flutter concepts like **state management, widgets, and UI updates**.

---

## 🎯 Project Goals

* Understand Flutter UI structure
* Learn how state updates work
* Practice building interactive apps
* Build a strong foundation in Flutter

---

## ✨ Key Features

* ➕ Increment counter
* ➖ Decrement counter
* 🔄 Real-time UI update
* 🎯 Clean and minimal UI
* ⚡ Fast and responsive interaction

---

## 🧠 How It Works

This app is based on a simple **counter logic**:

1. The app starts with an initial value (e.g., 0)
2. When the user presses the **"+" button**, the counter increases
3. When the user presses the **"- button"**, the counter decreases
4. The UI updates instantly using Flutter's `setState()`

👉 This demonstrates how Flutter rebuilds UI when the state changes.

---

## 🏗️ Architecture

* Built using Flutter’s widget-based architecture
* Uses **StatefulWidget** for dynamic updates
* UI and logic are kept simple for learning purposes

---

## 🛠️ Tech Stack

| Category   | Technology       |
| ---------- | ---------------- |
| Framework  | Flutter          |
| Language   | Dart             |
| UI System  | Material UI      |
| State Mgmt | setState (basic) |

---

## 📁 Project Structure

```bash id="z8c2pq"
CountingApp/
│── main.dart
│── widgets/
│── screens/
│── README.md
```

> ⚠️ Structure may vary stay focused when you read 

---

## ⚙️ Getting Started

### 🔧 Prerequisites

* Install Flutter SDK → https://flutter.dev/docs/get-started/install

---

### 📥 Installation

```bash id="4df8nm"
git clone https://github.com/rakibul-hasan212/flutter-ui-showcase.git
cd flutter-ui-showcase/lib/CountingApp
```

---

## ▶️ How to Run

```bash id="l1k9zp"
flutter pub get
flutter run
```

---

## 📸 Screenshots

> 📷 Add the app UI screenshots here in Later

---

## 🚀 Use Cases

* 👨‍🎓 Flutter beginners
* 🧑‍💻 UI practice projects
* 📱 Understanding state management
* 🧪 Learning app interaction

---

## 🔌 Core Logic Explained

```dart id="j4m1as"
int count = 0;

void increment() {
  setState(() {
    count++;
  });
}

void decrement() {
  setState(() {
    count--;
  });
}
```

👉 `setState()` ensures UI updates instantly when the value changes.

---

## ⚠️ Limitations

* No advanced state management (Provider, Riverpod, etc.)
* No persistent storage
* Simple UI only

---

## 🔮 Future Improvements

* Add reset button
* Add animations
* Use advanced state management
* Save data locally

---

## 🤝 Contributing

Contributions are welcome! 🎉

```bash id="z9xp3v"
# Fork the repo
# Create a branch
# Make changes
# Submit Pull Request
```

---

## 👨‍💻 Author

Rakibul Hasan
<br>
🔗 GitHub: https://github.com/rakibul-hasan212

---

## 🌟 Support

If you like this project:

⭐ Star the repo
🍴 Fork it
📢 Share it

---

## 💡 Final Note

> “Small apps build strong foundations in Flutter.” 🚀

Keep learning and building!
