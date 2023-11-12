# Flutter Widget Practice

This project demonstrates the use of Stateless and Stateful widgets in Flutter, along with the use of custom fonts, button styling, and widget alignment.

## Running the Project

1. Clone the [repository](https://github.com/ifirdavs/flutter-widgets-practice.git).
2. Open the project in your preferred IDE (e.g., VS Code or Android Studio).
3. Ensure you have the Flutter SDK set up and an emulator or physical device connected.
4. Run the `main.dart` file.

## Code Explanation

- `main.dart`: This is the entry point of the application. It runs the `MyApp` widget which is a `MaterialApp`.
- `MyApp`: This is a stateless widget that returns a `MaterialApp` widget. The `MaterialApp` widget is a convenience widget that provides many features needed for a complete app, such as navigation and theming.
- `GreetingWidget`: This is a stateless widget that takes a `message` as a parameter and displays it. It is styled with a green background and white text.
- `CounterWidget`: This is a stateful widget that displays a counter. The counter starts at 0 and increments each time the 'Tap' button is pressed. There's also a 'Reset' button to reset the counter to 0.

## Widget Tree

The widget tree that contains both stateless and stateful widgets and is at least 3 levels deep is in the `MyApp` widget. Here's the structure:

1. `MyApp` (Stateless Widget)
   - `MaterialApp` (Stateless Widget)
     - `Scaffold` (Stateless Widget)
       - `Padding` (Stateless Widget)
         - `Column` (Stateless Widget)
           - `Padding` (Stateless Widget)
             - `GreetingWidget` (Stateless Widget)
             - `CounterWidget` (Stateful Widget)

This structure is more than 3 levels deep and contains both stateless (`MyApp`, `MaterialApp`, `Scaffold`, `Padding`, `Column`, `GreetingWidget`, `Text`, `ElevatedButton`) and stateful (`CounterWidget`) widgets.
