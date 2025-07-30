import 'package:flutter/material.dart';
import "package:templates/widgets/customcard.dart";
import "../widgets/search.dart";
import "../widgets/title.dart";
import "../widgets/brands.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  static const name = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              spacing: 10,
              children: [
                Search(),
                CustomTitle(title: "Marcas", label: "Ver más"),
                Brands(),
                CustomTitle(title: "Más solicitados", label: "Ver más"),
                Customcard(
                  img: "assets/camioneta-azul-2.jpg",
                  title: "Truck Escanor 2025",
                  price: "150",
                ),
                SizedBox(height: 20),

                Customcard(
                  img: "assets/camioneta-azul-3.jpg",
                  title: "Truck Uchiha 2024",
                  price: "250",
                ),
                SizedBox(height: 20),
                Customcard(
                  img: "assets/camioneta-azul-4.jpg",
                  title: "Truck Uzumaki 2023",
                  price: "350",
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
