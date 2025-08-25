import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final MaterialColor color;
  final String title;
  final String content;

  const CategoryCard({
    super.key,
    required this.color,
    required this.title,
    required this.content,
  });

  static const name = "category_card";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Container(
      width: width * .95,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,

              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                TextButton.icon(
                  style: ButtonStyle(
                    iconAlignment: IconAlignment.end,
                    backgroundColor: WidgetStatePropertyAll(color.shade50),
                  ),
                  onPressed: () {},
                  label: Text(
                    "Explora",
                    style: TextStyle(color: color, fontWeight: FontWeight.bold),
                  ),
                  icon: Icon(Icons.arrow_right_alt_sharp, color: color),
                ),
              ],
            ),
          ),
          Text(content, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
