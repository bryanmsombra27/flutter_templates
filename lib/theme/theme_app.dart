import 'package:flutter/material.dart';

class ThemeApp {
  static ThemeData theme() {
    final color = const Color.fromARGB(229, 162, 21, 222);

    return ThemeData(
      colorSchemeSeed: color,

      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
