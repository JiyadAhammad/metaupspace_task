# 🚀 Employee Dashboard Application

A **production-ready Enterprise Employee Dashboard** built using **Flutter + FastAPI**, designed with a strong focus on **Clean Architecture**, scalability, and real-world engineering practices.

---

## 📌 Overview

This project demonstrates a **full-stack implementation** of an employee dashboard system with:

- 📱 Cross-platform Flutter application (Mobile, Web, Desktop)
- ⚙️ Backend powered by FastAPI (Python)
- 🐳 Dockerized backend deployment
- 🧠 Clean Architecture + Feature-first structure
- 🔁 Scalable state management using BLoC

---

## 🔗 Project Repository

👉 GitHub:  
https://github.com/JiyadAhammad/metaupspace_task

---

## 🏗️ Project Structure
metaupspace_task/
│
├── frontend/ # Flutter Application
└── backend/ # FastAPI Server (Dockerized)

---

## 📱 Frontend (Flutter)

### ⚙️ Tech Stack

- Flutter (Dart)
- flutter_bloc (State Management)
- Dio (Networking)
- Freezed + JsonSerializable (Model generation)
- fpdart (Functional programming & error handling)
- get_it (Dependency Injection)

---

### 🧠 Architecture

This project follows **Clean Architecture + Feature-First Structure**:

#### 1. Presentation Layer
- UI built with Flutter
- State management using BLoC
- Responsive across Mobile / Tablet / Web

#### 2. Domain Layer
- Pure Dart (no external dependencies)
- Entities
- UseCases
- Repository contracts

#### 3. Data Layer
- API integration using Dio
- DTO models using Freezed
- Repository implementations
- Functional error handling using fpdart

#### 4. Dependency Injection
- Managed using get_it
- Centralized service locator

---

## ⚙️ Backend (FastAPI)

### 🚀 Tech Stack

- Python (FastAPI)
- Pydantic (Data validation)
- Supabase (Database)
- Docker (Containerization)

---

### 🌐 API Endpoints

- Base URL:  
  https://metaupspace-task.onrender.com/

- Swagger Docs:  
  https://metaupspace-task.onrender.com/docs

---

### 🐳 Docker Setup

Run backend locally using Docker:

```bash
cd backend
docker-compose up --build
```

---

###  Flutter setup

Run Flutter locally using Real device or Emulator:

```bash
cd frontend
flutter pub get
flutter run
```


### 📦 Build APK (Dev)

This project uses flavors for environment separation.

```bash
flutter build apk --flavor dev -t lib/main_dev.dart --release
```

### 🔁 Code Generation

Used for Freezed & JSON serialization:

```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```
