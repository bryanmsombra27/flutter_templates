import 'package:flutter/material.dart';
import 'package:templates/widgets/banner.dart';
import 'package:templates/widgets/detail_card.dart';
import 'package:templates/widgets/info.dart';

class Jokes extends StatelessWidget {
  const Jokes({super.key});

  static const name = "jokes";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            CustomBanner(
              color: Colors.blue,
              title: "Chiste del dia",
              content: "Eres como el WiFi… a veces desapareces.",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 20,
                children: [
                  Info(icon: "🔥", title: "15", content: "Categorias"),
                  Info(icon: "🤣", title: "1000+", content: "Chistes"),
                  Info(icon: "💡", title: "100+", content: "Ideas diarias"),
                ],
              ),
            ),
            SizedBox(height: 10),

            Row(
              spacing: 15,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue),
                  ),
                  child: Text("Todas", style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: Text(
                    "Popular",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  child: Text(
                    "Reciente",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            Text(
              "Categorias Buscadas",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),

            SizedBox(height: 20),
            DetailCard(
              icon: Icons.light,
              title: "Ingenio",
              description:
                  "Chistes ingeniosos y basados en casos de la vida real",
            ),
            DetailCard(
              icon: Icons.wifi_tethering_error_outlined,
              title: "Internacionales",
              description: "Chistes basados en mexico y el mundo.",
            ),
            DetailCard(
              icon: Icons.signal_wifi_4_bar_lock_rounded,
              title: "Cancelados",
              description:
                  "chistes demasiado ofensivos para ser publicados sin antes ser sancionado por 30 dias en redes sociales",
            ),
          ],
        ),
      ),
    );
  }
}
