# FurniFy - Flutter Shopping App

A responsive furniture shopping application built with Flutter, featuring multilingual support (English/Arabic) and an elegant user interface.

## Project Overview

FurniFy is a modern furniture shopping app that provides users with an intuitive browsing experience for furniture items. The app features a welcome screen with authentication flows, a comprehensive shopping interface with product galleries, and special offers section - all wrapped in a sophisticated design with smooth animations and responsive layouts.

## Features

### Authentication System
- **Welcome Screen**: Elegant landing page with animated text and hover effects
- **Sign Up**: Complete registration form with validation
- **Sign In**: Secure login with form validation
- **Form Validation**: Email format checking, password requirements, and field validation

### Shopping Experience
- **Featured Products Carousel**: Interactive PageView with navigation controls and indicators
- **Product Gallery**: Responsive grid layout showcasing furniture items
- **Interactive Product Cards**: Hover effects and smooth animations
- **Add to Cart**: One-tap shopping cart functionality with custom snackbar notifications
- **Hot Offers Section**: Special deals and bundle offers display

### Design & UI/UX
- **Responsive Design**: Optimized for both mobile and web platforms
- **Smooth Animations**: Hover effects, page transitions, and interactive elements
- **Custom Color Scheme**: Warm, furniture-themed color palette
- **Typography**: Custom Suwannaphum font family
- **Gradient Backgrounds**: Beautiful gradient overlays and backgrounds

### Internationalization
- **Multi-language Support**: English and Arabic localization
- **RTL Support**: Right-to-left text direction for Arabic
- **Localized Content**: All text content supports multiple languages

## Setup Instructions

### Prerequisites
- Flutter SDK (3.0 or higher)
- Dart SDK (2.17 or higher)
- Android Studio / VS Code
- Git

### Installation Steps

1. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd sprints_shopping_app
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Localization**
   ```bash
   flutter gen-l10n
   ```

4. **Add Assets**
   Ensure the following assets are in place:
   ```
   assets/
   ├── images/
   │   ├── cabinet.jpeg
   │   ├── lamp.jpeg
   │   ├── sofa.jpeg
   │   ├── chair.jpeg
   │   ├── coffee_table.jpeg
   │   ├── dining_table.jpeg
   │   └── welcomePic.jpeg
   └── fonts/
       └── Suwannaphum-Regular.ttf
   ```

5. **Run the Application**
   ```bash
   # For mobile development
   flutter run
   
   # For web development
   flutter run -d chrome
   
   # For specific platform
   flutter run -d android
   flutter run -d ios
   ```

## Key Components

### Welcome Screen
- Animated text with TypeWriter effect
- Responsive image gallery with hover animations
- Navigation buttons to authentication screens

### Authentication Screens
- Form validation with regex patterns
- Success dialog with smooth transitions
- Responsive design for all screen sizes

### Shopping Screen
- Featured products carousel with navigation
- Product grid with interactive cards
- Special offers list with styled tags
- Responsive layout adaptation

## Color Scheme

- **Primary**: `#3F4025` (Dark Green)
- **Secondary**: `#934C26` (Brown)
- **Accent**: `#BC8948` (Light Brown)
- **Background**: `#F0E0C1` (Cream)

## Screenshots

### Welcome Screen  
<p align="center">
  <img width="300" alt="Mobile - Welcome Screen" src="https://github.com/user-attachments/assets/a1eab8f8-6f52-43f7-85f3-2cd797c326a9" />
</p>

<p align="center">
  <img width="800" alt="Desktop - Welcome Screen" src="https://github.com/user-attachments/assets/fbe3309d-e13a-44b7-b8c5-34179bd924e0" />
</p>

---

### Sign Up Form  
<p align="center">
  <img width="300" alt="Mobile - Sign Up" src="https://github.com/user-attachments/assets/0f8470a8-deed-412c-95e2-a505190744fb" />
</p>

<p align="center">
  <img width="800" alt="Desktop - Sign Up" src="https://github.com/user-attachments/assets/8e4656ec-4a15-4977-9aea-d85ef18a65f8" />
</p>

---

### Sign In Form  
<p align="center">
  <img width="300" alt="Mobile - Sign In" src="https://github.com/user-attachments/assets/d3d0ae9f-70e9-4399-b4a2-86bc562a5d78" />
</p>

<p align="center">
  <img width="800" alt="Desktop - Sign In" src="https://github.com/user-attachments/assets/7d874f9f-cffd-417b-ac69-3d3a7039cd4d" />
</p>

---

### Shopping Screen with Products  
<p align="center">
  <img width="300" alt="Mobile - Shopping" src="https://github.com/user-attachments/assets/8c930b8c-46aa-4fe0-b05b-ba414bcce545" />
</p>

<p align="center">
  <img width="800" alt="Desktop - Shopping 1" src="https://github.com/user-attachments/assets/d281da68-9f1a-44f7-a634-e8bd35663093" />
</p>

<p align="center">
  <img width="800" alt="Desktop - Shopping 2" src="https://github.com/user-attachments/assets/94912e98-ad48-4f45-acb1-a9ed3573a05a" />
</p>


