import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String img;
  final double price;

  const ProductCard({
    super.key,
    required this.title,
    required this.img,
    required this.price,
  });

  static const name = "product_card";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset(img, fit: BoxFit.cover, width: 280),
          ),
          Text(title, style: textTheme.titleSmall),
          Text(
            "\$$price",
            style: textTheme.titleSmall!.copyWith(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
