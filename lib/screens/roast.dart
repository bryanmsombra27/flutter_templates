import 'package:flutter/material.dart';
import 'package:templates/widgets/banner.dart';
import 'package:templates/widgets/category_card.dart';
import 'package:templates/widgets/info.dart';

class Roast extends StatelessWidget {
  const Roast({super.key});

  static const name = "roast";

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
              color: Colors.orange,
              title: "Satira del dia",
              content: "Eres como el WiFi… a veces desapareces.",
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 20,
                children: [
                  Info(icon: "🔥", title: "5", content: "Categorias"),
                  Info(icon: "☠️", title: "100+", content: "Satiras"),
                  Info(icon: "😈", title: "Brutal", content: "Modo"),
                ],
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Elige tu humor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),

            SizedBox(height: 20),
            CategoryCard(
              color: Colors.green,
              title: "Leve la nieve",
              content: "Suave, satira ligera, sin malicia.",
            ),
            CategoryCard(
              color: Colors.orange,
              title: "Nivel Medio",
              content: "Un poco más directo, pero todavía gracioso.",
            ),
            CategoryCard(
              color: Colors.red,
              title: "Nivel Alto",
              content: "Empieza a incomodar un poco más.",
            ),
            CategoryCard(
              color: Colors.deepOrange,
              title: "Sin perdon de Dios",
              content:
                  "Las satiras comienzan a ser fuertes con intencion de molestar.",
            ),
            CategoryCard(
              color: Colors.pink,
              title: "Humor Wakandiano",
              content:
                  "Las satiras son tan oscuras que pueden gritar wakanda foreva...",
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
