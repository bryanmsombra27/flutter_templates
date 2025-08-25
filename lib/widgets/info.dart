import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String icon;
  final String title;
  final String content;

  const Info({
    super.key,
    required this.icon,
    required this.title,
    required this.content,
  });

  static const name = "info";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(icon, style: TextStyle(fontSize: 26)),
          Text(
            title,
            style: TextStyle(
              fontSize: 30,
              color: colors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            content,
            style: TextStyle(
              color: Colors.grey.shade400,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
