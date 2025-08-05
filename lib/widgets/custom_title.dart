import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;

  const CustomTitle({super.key, required this.title});

  static const name = "custom_title";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final colors = Theme.of(context).colorScheme;

    return Column(
      spacing: 20,
      children: [
        SizedBox(
          width: width * .9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Icon(Icons.double_arrow_rounded, size: 24, color: colors.primary),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
