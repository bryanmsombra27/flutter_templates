import 'package:flutter/material.dart';
import 'package:templates/widgets/carousel.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const name = "welcome_screen";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          Carousel(),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: height * .6,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                spacing: 10,
                children: [
                  Text(
                    "Forma sencilla de reservar restaurantes",
                    maxLines: 3,
                    textAlign: TextAlign.center,

                    style: textTheme.titleLarge,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, voluptates.",
                    style: textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.white),
                        ),
                        onPressed: () {},
                        child: Text("Omitir", style: textTheme.bodyMedium),
                      ),

                      TextButton.icon(
                        onPressed: () {},
                        iconAlignment: IconAlignment.end,
                        label: Text(
                          "Continuar",
                          style: textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        icon: Icon(Icons.arrow_forward, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
