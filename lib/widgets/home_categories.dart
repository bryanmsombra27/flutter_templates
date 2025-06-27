import 'package:flutter/material.dart';
import 'package:templates/widgets/index.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  static const name = "home_categories";

  @override
  Widget build(BuildContext context) {
    return ContainerWraper(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 5,
          children: [
            Text(
              "Categorias",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: () {}, child: Text("Ver Todas")),
          ],
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 20,
            children: [
              _CategoryItem(icon: Icons.cases, title: "All"),
              _CategoryItem(icon: Icons.coffee, title: "Coffee"),
              _CategoryItem(icon: Icons.local_drink, title: "Drinks"),
              _CategoryItem(icon: Icons.fastfood, title: "Fast Food"),
              _CategoryItem(icon: Icons.icecream, title: "deserts"),
              _CategoryItem(icon: Icons.flag_circle, title: "sushi"),
            ],
          ),
        ),
      ],
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const _CategoryItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      spacing: 10,
      children: [
        Icon(icon, size: 50, color: colors.primary),
        Text(title, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
