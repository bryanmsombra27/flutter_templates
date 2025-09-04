import 'package:flutter/material.dart';

class FilterOption extends StatelessWidget {
  final String title;
  bool isActive;

  FilterOption({super.key, required this.title, this.isActive = false});

  static const name = "filter_option";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isActive ? colors.primary : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isActive ? Colors.white : Colors.grey.shade700,
        ),
      ),
    );
  }
}
