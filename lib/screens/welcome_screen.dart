import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/screens/home_screen.dart';
import 'package:templates/store/carousel_store.dart';
import 'package:templates/widgets/carousel.dart';
import 'package:templates/widgets/widget_dot.dart';
import "package:templates/store/images.dart";

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  static const name = "welcome_screen";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final double height = MediaQuery.sizeOf(context).height;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    final current_page = ref.watch(carouselStateProvider);

    return Scaffold(
      body: Stack(
        children: [
          Carousel(),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            top: height * .55,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                spacing: 10,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      sliderPages.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Dot(isActive: index == current_page),
                      ),
                    ),
                  ),

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
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) {
                                return HomeScreen();
                              },
                            ),
                          );
                        },
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
