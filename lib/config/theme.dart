import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeApp {
  final appColor = Color.fromARGB(255, 18, 81, 158);

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: appColor,
      // textTheme: GoogleFonts.almendraTextTheme(
      //   TextTheme(
      //     titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      //     bodySmall: TextStyle(
      //       fontSize: 18,
      //       fontWeight: FontWeight.w300,
      //       color: Colors.grey.shade600,
      //     ),
      //   ),
      // ),
      textTheme: GoogleFonts.almendraTextTheme().copyWith(
        titleLarge: GoogleFonts.almendra(
          textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        bodySmall: GoogleFonts.poppins(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.grey.shade600,
          ),
        ),
        bodyMedium: GoogleFonts.poppins(
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(appColor),

          padding: WidgetStatePropertyAll(const EdgeInsets.all(20)),
          shape: WidgetStatePropertyAll(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
