import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
    required this.height,
    required this.colors,
    required this.textTheme,
  });

  final double height;
  final ColorScheme colors;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: height * .2,
      color: colors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Welcome back", style: textTheme.bodyMedium),
              Text("Jhon Doe", style: textTheme.titleMedium),
            ],
          ),
          Icon(Icons.notifications, size: 40, color: Colors.white),
        ],
      ),
    );
  }
}
