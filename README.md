# Learning Riverpod in Flutter

This project is dedicated to learning and practicing **Riverpod**, a reactive caching and state management framework for Flutter.

## Project Structure

- `lib/main.dart`: Entry point of the application, initializing the `ProviderScope`.
- `lib/video1.dart`: Introduction to basic `Provider` and `ConsumerWidget`.

## Concepts Learned

### 1. ProviderScope
The `ProviderScope` widget is used at the root of the Flutter app to store the state of all providers.
```dart
void main() {
  runApp(const ProviderScope(child: MyApp()));
}
```

### 2. Provider
The most basic type of provider, used for providing read-only values (like constants or configurations).
- `staticStringProvider`: Returns a simple String.
- `intProvider`: Returns an integer value.
- `doubleProvider`: Returns a double value.

### 3. ConsumerWidget
A base class for widgets that need to listen to providers. It provides a `WidgetRef` to access providers.
```dart
class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(myProvider);
    return Text(value);
  }
}
```

## Getting Started

To run this project:
1. Ensure you have Flutter installed.
2. Run `flutter pub get` to install dependencies (specifically `flutter_riverpod`).
3. Run `flutter run`.
