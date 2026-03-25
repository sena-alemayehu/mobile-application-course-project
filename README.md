# 🎬 Movies Watchlist

A cross-platform application to manage and track your personal movies watchlist. Add, rate, and organize movies on your Flutter mobile app, backed by a Spring Boot API.

## 📦 Overview

Movies Watchlist is a full-stack application designed for seamless mobile usage:

- **Backend:** Spring Boot REST API managing users, movies, and watchlists.
- **Mobile App:** Flutter application for iOS and Android with an intuitive UI for managing your movie collection.
- **Shared Types:** API types generated for consistent data modeling across backend and mobile.

## 🎯 Quick Start

> Prerequisites: `Java 21+`, `Node.js 20+`, `pnpm`, `Gradle`, `Flutter SDK`, `PostgreSQL`

```bash
# Clone the project
git clone https://github.com/mohammed-abdi/mobile-application-course-project.git
cd mobile-application-course-project

# Install dependencies
pnpm install

# Run the Backend locally
cd app/api
cp .env.example .env
./gradlew bootRun

# Run Flutter mobile app
cd ../mobile
cp .env.example .env
flutter run
```

## ⭐ Features

- Add, update, and track movies in a personal watchlist
- JWT authentication with secure environment-based configuration
- Environment-specific backend configs for dev/prod
- Flutter mobile app with cross-platform support
- Database migrations with Liquibase
- Shared API types for consistent data between backend and app

## 📁 Project Structure

```bash
.
├── apps/                    # Deployable applications
│   ├── api/                 # Backend service (Spring Boot)
│   └── mobile/              # Flutter mobile app
├── packages/                # Shared, reusable modules (types, configs)
├── package.json             # Root scripts & workspace dependencies
├── pnpm-workspace.yaml      # Workspace definition (pnpm)
└── turbo.json               # Turborepo task pipeline

```

## 📄 License

This project is licensed under the MIT License. See [License](LICENSE) for details.
