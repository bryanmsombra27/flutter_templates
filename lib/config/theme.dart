import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: const Color.fromARGB(255, 12, 66, 132),
      textTheme: GoogleFonts.almendraTextTheme(
        TextTheme(
          titleLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
