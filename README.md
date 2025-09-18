# D-Licious 🍕

A beautiful and interactive Flutter food delivery app featuring pizza customization, ingredient selection, and order management.

## Features

- 🍕 **Interactive Pizza Builder** - Customize pizzas with various ingredients and sizes
- 🛒 **Shopping Cart** - Add items to cart and manage orders
- 📱 **Multi-screen Experience** - Login, menu browsing, and order tracking
- 🎨 **Beautiful UI** - Custom animations and smooth transitions
- 🍔 **Multiple Food Categories** - Pizza, burgers, momos, and more
- 👤 **User Profile** - Profile management and order history

## Tech Stack

- **Framework**: Flutter (Dart)
- **Dependencies**:
  - `carousel_slider` - Image carousels and sliders
  - `introduction_screen` - Onboarding screens
  - `http` - API communication
  - `cupertino_icons` - iOS-style icons

## Screenshots & Demo

The app includes multiple interactive screens:
- Pizza customization with ingredient selection
- Food list with categories (Pizza, Burger, Samosa, Panipuri, Maggie, Momos)
- Shopping cart and order management
- User profile and login system

## Getting Started

### Prerequisites

- Flutter SDK (>=2.18.5 <3.0.0)
- Dart
- Android Studio / VS Code
- iOS Simulator / Android Emulator

### Installation

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd D-Licious
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Build for Release

```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release
```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── login.dart               # User authentication
├── menu.dart                # Main menu screen
├── pizza_order_details.dart # Pizza customization
├── cart.dart                # Shopping cart
├── order.dart               # Order management
├── profile.dart             # User profile
├── food_list_api.dart       # Food items and API
└── [other screens and components]
```

## Key Components

- **Pizza Builder**: Interactive pizza customization with real-time preview
- **Ingredient System**: Dynamic ingredient selection with visual feedback
- **Cart Management**: Add/remove items with quantity controls
- **Order Flow**: Complete order process from selection to checkout

## Assets

The app includes rich visual assets:
- Pizza variations and ingredients
- Food category images
- Background images and logos
- Custom fonts (Poppins family)

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For any questions or suggestions, please open an issue in the repository.
