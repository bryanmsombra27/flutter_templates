import 'package:flutter/material.dart';
import 'package:templates/widgets/stadistics/stadistic.dart';

class Stadistics extends StatelessWidget {
  const Stadistics({super.key});

  static const name = "stadistics";

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          spacing: 10,
          children: [
            SizedBox(height: 30),
            Text("Your balance", style: textTheme.bodySmall),
            Text("\$10,501,00", style: textTheme.titleLarge),
            Stadistic(),
            Row(
              spacing: 12,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Icon(Icons.arrow_downward_rounded, color: Colors.white),
                      Text("Income"),
                      Text(
                        "\$32,216,00",
                        style: textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 55, 218, 218),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 20,
                    children: [
                      Icon(Icons.arrow_downward_rounded, color: Colors.white),
                      Text("Outcome"),
                      Text(
                        "\$12,285,00",
                        style: textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
