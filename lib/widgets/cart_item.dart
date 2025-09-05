import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String img;
  final String title;
  final String price;

  const CartItem({
    super.key,
    required this.img,
    required this.title,
    required this.price,
  });

  static const name = "cart_item";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: Image.asset("assets/$img", fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _CartDescriptionItem(icon: Icons.shopping_bag, title: "+999"),
                  _CartDescriptionItem(
                    icon: Icons.add_reaction_outlined,
                    title: "+999",
                  ),

                  Row(
                    spacing: 5,
                    children: [
                      Icon(Icons.remove_sharp),
                      Text("01"),
                      Icon(Icons.add),
                    ],
                  ),
                ],
              ),

              Text(
                "\$$price",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: colors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CartDescriptionItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const _CartDescriptionItem({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey.shade300),
        Text(
          title,
          style: TextStyle(
            color: Colors.grey.shade300,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
