import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CartDetailScreen extends StatelessWidget {
  const CartDetailScreen({super.key});

  static const name = "cart_detail_screen";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final colors = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset("assets/hamburguesa.png", width: width * .3),
              ),
              Column(
                spacing: 10,
                children: [
                  Text(
                    "Shadow Burguer",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
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
                  Text("\$6.20"),
                ],
              ),
              Icon(Icons.favorite),
            ],
          ),
          Divider(),

          Text("Descripcion", style: TextStyle(fontWeight: FontWeight.bold)),

          Text(
            "lorem ipsum dolor sit amet consectetur adipisicing elit. Consequuntur, quae.",
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tamaño"),
              TextButton(onPressed: () {}, child: Text("S")),
              TextButton(onPressed: () {}, child: Text("M")),
              TextButton(onPressed: () {}, child: Text("L ")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Cantidad"),
              IconButton(onPressed: () {}, icon: Icon(Icons.remove_circle)),
              Text("2"),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
            ],
          ),
          Text("Extras"),
          Row(
            spacing: 12,
            children: [
              _extraIngredient(colors: colors, isSelected: true),
              _extraIngredient(colors: colors, isSelected: false),
              _extraIngredient(colors: colors, isSelected: false),
              _extraIngredient(colors: colors, isSelected: true),
            ],
          ),

          Row(
            spacing: 10,
            children: [
              Text("Total:", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "\$20.69",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: colors.primary,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("volver"),
              ),
              TextButton(onPressed: () {}, child: Text("Agregar al carrito")),
            ],
          ),
        ],
      ),
    );
  }
}

class _extraIngredient extends StatelessWidget {
  final bool isSelected;

  const _extraIngredient({
    super.key,
    required this.colors,
    required this.isSelected,
  });

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? colors.primary : null,
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            "Cebolla",
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
          Text(
            "\$5.22",
            style: TextStyle(color: isSelected ? Colors.white : Colors.black),
          ),
        ],
      ),
    );
  }
}
