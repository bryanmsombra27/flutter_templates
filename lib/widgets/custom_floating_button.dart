import 'package:flutter/material.dart';
import 'package:templates/widgets/cart_details.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  static const name = "custom_floating_button";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) {
              return CartDetails();
            },
          ),
        );
      },
      child: CircleAvatar(
        maxRadius: 30,
        backgroundColor: colors.inversePrimary,
        child: Icon(Icons.shopping_cart, size: 30),
      ),
    );
  }
}
