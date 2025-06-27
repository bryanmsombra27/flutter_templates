import 'package:flutter/material.dart';
import 'package:templates/widgets/index.dart';

class HomeMostPopular extends StatelessWidget {
  const HomeMostPopular({super.key});

  static const name = "home_most_popular";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ContainerWraper(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 5,
          children: [
            Text(
              "Comida Popular ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: () {}, child: Text("Ver Todas")),
          ],
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _CustomFoodCard(colors: colors),
              _CustomFoodCard(colors: colors),
              _CustomFoodCard(colors: colors),
            ],
          ),
        ),
      ],
    );
  }
}

class _CustomFoodCard extends StatelessWidget {
  const _CustomFoodCard({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black38,
      child: Column(
        spacing: 12,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              "assets/cancha.png",
              fit: BoxFit.cover,
              width: 300,
              height: 200,
            ),
          ),

          Text(
            "Papas fritas",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: 300,
            child: Text(
              "lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat, voluptatem.",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              // textHeightBehavior: TextHeightBehavior(),
            ),
          ),

          Container(
            // color: Colors.blue,
            width: 300,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "\$ 7.56 ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: colors.primary),
                    Text("4.3", style: TextStyle(color: colors.primary)),
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
