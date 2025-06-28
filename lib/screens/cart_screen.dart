import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const name = "cart_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text("My Cart", textAlign: TextAlign.center)),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 10.0,
          right: 10,
          left: 10,
          top: 20,
        ),
        child: Column(
          spacing: 20,
          children: [
            _CartItem(colors: colors),
            _CartItem(colors: colors),
            _CartItem(colors: colors),
          ],
        ),
      ),
    );
  }
}

class _CartItem extends StatelessWidget {
  const _CartItem({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 10,
        children: [
          Expanded(
            child: Row(
              spacing: 10,
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10),
                  child: Image.asset(
                    "assets/pizza.png",
                    width: 80,
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                ),
                Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Pizza de pepperoni"),
                    RatingBar(
                      itemSize: 20,
                      itemCount: 5,
                      initialRating: 2,
                      onRatingUpdate: (rating) {},
                      direction: Axis.horizontal,
                      ratingWidget: RatingWidget(
                        full: Icon(Icons.star, color: colors.primary),
                        half: Icon(Icons.star_half),
                        empty: Icon(Icons.star_border),
                      ),
                    ),

                    Text("\$20.55"),
                  ],
                ),
                Row(
                  spacing: 15,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors.primary,
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.remove_sharp, color: Colors.white),
                    ),
                    Text("2"),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors.primary,
                      ),
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
