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
    final double height = MediaQuery.sizeOf(context).height;

    return Container(
      margin: EdgeInsets.only(top: 30),
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: height / 2),

        child: CarouselView.weighted(
          // shrinkExtent: 2,
          enableSplash: true,
          flexWeights: [1, 18, 2],

          controller: carouselController,
          children: [
            ClipRect(
              child: Image.asset(fit: BoxFit.cover, "assets/cancha.png"),
            ),
            ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/hero.png")),
            ClipRect(child: Image.asset(fit: BoxFit.cover, "assets/logo.png")),
            ClipRect(
              child: Image.asset(fit: BoxFit.cover, "assets/cancha.png"),
            ),
            ClipRect(
              child: Image.asset(fit: BoxFit.cover, "assets/cancha.png"),
            ),
            ClipRect(
              child: Image.asset(fit: BoxFit.cover, "assets/cancha.png"),
            ),
            ClipRect(
              child: Image.asset(fit: BoxFit.cover, "assets/cancha.png"),
            ),
          ],
        ),
      ),
    );
  }
}
