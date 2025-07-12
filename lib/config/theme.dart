import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 28, 179, 250),
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: Colors.white,
      ),
      bodySmall: TextStyle(color: Colors.grey.shade600, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white, fontSize: 18),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.blue),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    ),
  );
}
