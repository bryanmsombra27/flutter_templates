import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  final color = Colors.lightBlueAccent;

  ThemeData getTheme() {
    return ThemeData(
      colorSchemeSeed: color,
      textTheme: GoogleFonts.robotoCondensedTextTheme().copyWith(
        titleLarge: GoogleFonts.robotoCondensed(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: color.shade700,
        ),
        titleMedium: GoogleFonts.robotoCondensed(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),

        bodySmall: GoogleFonts.abrilFatface(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.grey.shade600,
          ),
        ),
        bodyMedium: GoogleFonts.aBeeZee(
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
