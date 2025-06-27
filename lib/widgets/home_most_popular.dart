import 'package:flutter/material.dart';
import 'package:templates/widgets/index.dart';

class HomeMostPopular extends StatelessWidget {
  const HomeMostPopular({super.key});

  static const name = "home_most_popular";

  @override
  Widget build(BuildContext context) {
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
      ],
    );
  }
}
