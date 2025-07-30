import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  static const name = "brands";

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage("assets/ford.png"),
          maxRadius: 35,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/land-rover.png"),
          maxRadius: 35,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/chevrolet.png"),
          maxRadius: 35,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/bnw.png"),
          maxRadius: 35,
        ),
      ],
    );
  }
}
