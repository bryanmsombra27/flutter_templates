import 'package:flutter/material.dart';

class CustomCarrousel extends StatefulWidget {
  const CustomCarrousel({super.key});

  static const name = "custom_carrousel";

  @override
  State<CustomCarrousel> createState() => _CustomCarrouselState();
}

class _CustomCarrouselState extends State<CustomCarrousel> {
  final carouselController = CarouselController(initialItem: 2);

  @override
  void dispose() {
    carouselController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Container(
      margin: EdgeInsets.only(top: 30),
      height: width * 7 / 8,
      child: CarouselView.weighted(
        // shrinkExtent: 2,
        enableSplash: true,
        flexWeights: [1, 18, 2],

        controller: carouselController,
        children: [
          ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/cancha.png")),
          ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/hero.png")),
          ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/logo.png")),
          ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/cancha.png")),
          ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/cancha.png")),
          ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/cancha.png")),
          ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/cancha.png")),
        ],
      ),
    );
  }
}
