import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String category;
  final IconData icon;
  bool isActive;

  IconContainer({
    super.key,
    required this.category,
    required this.icon,
    this.isActive = false,
  });

  static const name = "icon_container";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      spacing: 10,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isActive ? colors.primary : Colors.grey.shade300,
          ),
          child: Icon(icon, size: 40, color: isActive ? Colors.white : null),
        ),

        Text(category, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
