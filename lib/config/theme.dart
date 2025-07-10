import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() => ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      bodySmall: TextStyle(color: Colors.grey.shade600, fontSize: 16),
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
