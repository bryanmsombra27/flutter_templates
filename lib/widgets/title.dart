import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final String label;
  const CustomTitle({super.key, required this.title, required this.label});

  static const name = "title";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Text(label),
        ],
      ),
    );
  }
}
