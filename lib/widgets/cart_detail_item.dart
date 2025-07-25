import 'package:flutter/material.dart';

class CartDetailItem extends StatelessWidget {
  final String title;
  final String img;
  final double price;

  const CartDetailItem({
    super.key,
    required this.title,
    required this.img,
    required this.price,
  });

  static const name = "cart_detail_item";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset(img, width: width * .3),
          ),
          SizedBox(
            width: width * .4,
            child: Text(
              title,
              style: textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Text("\$$price", style: textTheme.bodySmall),
        ],
      ),
    );
  }
}
