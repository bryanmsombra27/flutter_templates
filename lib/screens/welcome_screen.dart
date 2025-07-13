import 'package:flutter/material.dart';
import 'package:templates/widgets/carousel.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const name = "welcome_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Carousel(), Text("Hola mundo")]));
  }
}
