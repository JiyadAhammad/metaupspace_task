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

👉 Apk:  
https://drive.google.com/file/d/1_4-pDZnh_a-FUtDOy8TjkIR56-dI2Kos/view?usp=sharing

---

## 🏗️ Project Structure

```bash
├── metaupspace_task/
    ├── frontend/
        ├── lib/ 
        ├── features/
        |     ├── feature_Name/
        |     |     
        |     |     ├── presentation/ # contains ui codes and states
        |     |     |      ├── page.dart # UI page
        |     |     |      ├── widgets/ # common widget for this feature
        |     |     |          └── widget.dart 
        |     |     |      └── Bloc/ # State management solution (Bloc, Provider)
        |     |     |          ├── Bloc.dart
        |     |     |          ├── event.dart 
        |     |     |          └── state.dart
        |     |     |             
        |     |     ├── domain/
        |     |     |      ├── entities/
        |     |     |          └── entity.dart # entity connecting with usecase
        |     |     |      ├── param/ 
        |     |     |          └── request_param.dart # Request Param 
        |     |     |      ├── repository/ 
        |     |     |          └── abstract_repository.dart # Abstract interface 
        |     |     |      └── usecase/ 
        |     |     |          └── usecase.dart # Usecase connecting with presentation layer
        |     |     |      
        |     |     ├── data/ 
        |     |     |      ├── data_sources/
        |     |     |         ├── remote_data_source.dart # External Api,
        |     |     |         └── local_data_source.dart # SQFlite, Hive
        |     |     |      ├── mapper/
        |     |     |         └── model_mapper.dart # Extension mapper to model to entity
        |     |     |      ├── model/
        |     |     |         └── feature_model.dart # Model classes
        |     |     |      └── repository/ 
        |     |     |         └── repository_implementation.dart # Implementation of Domain Abstract layer
        |     |     └── feature_dependencies.dart    # feature Dependency Injection     
        |     └── ...
        ├── Core/
        |     ├── app_config/  
        |     |     ├── api_config.dart
        |     |     ├── auth_session.dart
        |     |     └── ...
        |     ├── constants/  # App data Constants
        |     |     ├── app_constants.dart
        |     |     └── ...
        |     ├── di/  # Core Dependency injection 
        |     |     ├── injection.dart
        |     |     └── ...
        |     ├── environment/  # App env (dev, prod, staging) 
        |     |     ├── app_env.dart
        |     |     └── ...
        |     ├── error/   # Common app errors and exceptions
        |     |     ├── exception.dart
        |     |     ├── failures.dart
        |     |     └── ...
        |     ├── extension/        # Extension methods
        |     |     ├── string_extension.dart
        |     |     ├── date_extension.dart
        |     |     └── ...
        |     ├── logger/    # app logs
        |     |     ├── app_logger.dart
        |     |     └── ...
        |     ├── model/    # common app model
        |     |     ├── models.dart
        |     |     └── ...
        |     ├── network/    # Network configuration (dio, interceptors, network endpoints)
        |     |     ├── endpoints.dart
        |     |     ├── interceptors.dart
        |     |     ├── api_client.dart
        |     |     └── ...
        |     ├── routes/      # App Navigation
        |     |     ├── app_route.dart
        |     |     ├── route_names.dart
        |     |     └── ...
        |     ├── storage/      # App theme and colors
        |     |     ├── local_storage_config.dart
        |     |     └── ...
        |     ├── theme/      # App theme and colors
        |     |     ├── theme.dart
        |     |     └── ...
        |     ├── utils/    # utilities
        |     |     ├── show_snackbar.dart
        |     |     └── ...
        |     ├── widgets/      # Common reuseable widgets across app
        |     |     ├── loader.dart
        |     |     ├── primary_button.dart
        |     |     └── ...
        |     └── ...  
        ├── my_app.dart    # Application entry point
        └── main_dev.dart   # Dart entry point dev
        └── main_prod.dart   # Dart entry point prod
    ├── server/
        ├── app/
        |     |     
        |     |     ├── api/v1/ # Api endpoint versions
        |     |     |      ├── router.dart # Endpoint router
        |     |     |      └── endpoint/ # Endpoints
        |     |     |          ├── endpoint_1.py
        |     |     |          ├── endpoint_2.py 
        |     |     |          └── ...
        |     |     |             
        |     |     ├── Core/ # configs and Api depends (Token validation)
        |     |     |      ├── config.py/
        |     |     |      └── dependencies.py/ 
        |     |     |      
        |     |     ├── db/ # database setup
        |     |     ├── schema/ # Pydantic model 
        |     |     |      ├── schema_1.py
        |     |     |      ├── schema_2.py  
        |     |     |      └── ...  
        |     |     |      
        |     |     ├── service/ # Endpoint service
        |     |     |      ├── service_1.py
        |     |     |      ├── service_2.py  
        |     |     |      └── ...  
        |     |     |      
        |     |     └── main.py    # python entry  
        |     └── ...
        ├── docker_compose.yml    # Docker composer setup
        └── Dockerfile   # Docker setup, image building
        └── requirement.txt   # Python dependencies
```


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
