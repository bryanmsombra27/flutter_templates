import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final ColorScheme colors;

  const CustomSearchBar({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(Icons.search),
        prefixIconColor: colors.primary,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        border: InputBorder.none,
        hintText: "Encuentra tu projecto",
      ),
    );
  }
}
