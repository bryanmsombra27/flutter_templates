import 'package:flutter/material.dart';
import 'package:templates/screens/home_screen.dart';
import 'package:templates/screens/index.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  static const name = "welcome";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    final double maxHeight = height * 0.6;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: maxHeight,
            child: CarouselView(
              itemExtent: double.infinity,
              backgroundColor: colors.secondary,
              itemSnapping: true,

              children: [
                Image.asset(
                  "assets/slider-1.jpg",
                  height: maxHeight,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/slider-2.jpg",
                  height: maxHeight,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/slider-3.jpg",
                  height: maxHeight,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),

          Text("Toma el control de tus finanzas", style: textTheme.titleLarge),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Haz tu cuenta en la aplicación, y pronto estaras disfrutando de los beneficios de lavar dinero y de la vida",
              style: textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return HomeScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Comienza Ahora",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
