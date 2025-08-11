# 📱 Reusable Flutter UI Components with GetX

[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue.svg)](https://flutter.dev/)  
[![GetX](https://img.shields.io/badge/GetX-4.6.x-8A2BE2.svg)](https://pub.dev/packages/get)  
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)  
[![Download APK](https://img.shields.io/badge/Download-APK-blue.svg)]([https://github.com/<your-username>/<your-repo>/releases/latest/download/app-release.apk](https://drive.google.com/file/d/1CEV4Fbhz0zsqFTwo5wdiC3NFNDv-WqN5/view?usp=drivesdk)  

A **modular Flutter application** showcasing **reusable UI components** with **GetX** for state management, navigation, and dependency injection.  
The app follows a **feature-first architecture** with a clean separation of concerns, making it easy to scale and maintain.

---

## ✨ Key Features
- **GetX-powered**:
  - Routing with `GetMaterialApp` and centralized route definitions.
  - Dependency Injection via `Bindings`.
  - Reactive state updates using `Obx` and `GetBuilder`.
- **Reusable UI Kit**:
  - Buttons, text fields, dialogs, toasts, indicators, suffix buttons.
  - Custom painter for dashed lines.
- **Feature-first folder structure**:
  - Isolated features with their own controllers, views, and bindings.
- **Splash flow**:
  - Async initialization without blocking the main thread.
- **Feed-ready components**:
  - Text fields with error states, phone verification, and OTP input.

---

## 📂 Project Structure

```plaintext
lib/
├── components/               # Global reusable widgets
│   ├── custom_button.dart
│   ├── custom_dialogs.dart
│   ├── custom_indicator.dart
│   ├── custom_text_field.dart
│   ├── custom_toast.dart
│   └── text_field_suffix_button.dart
│
├── data/
│   ├── models/               # Data models
│   │   └── media_post_model.dart
│   └── providers/            # API/data providers
│
├── features/
│   ├── bottom_nav/           # Bottom navigation bar
│   ├── dash_line/            # Dashed line painter feature
│   ├── home/                  # Home screen
│   ├── indicator/             # Loading indicators
│   ├── media_feed/            # Feed display
│   ├── phone_number_verification/ # OTP and phone validation
│   ├── splash/                # Splash screen flow
│   └── textfields/            # Text field demo variations
│
├── routes/
│   ├── app_pages.dart         # Route definitions
│   └── app_routes.dart        # Route constants
│
├── utils/
│   ├── app_utils.dart         # Helper functions
│   └── theme.dart             # Theming and styling
