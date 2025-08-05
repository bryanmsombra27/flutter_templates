import 'package:flutter/material.dart';
import 'package:templates/widgets/custom_card.dart';
import 'package:templates/widgets/example_paint.dart';
import 'package:templates/widgets/switchbox.dart';
import "./widgets//banner.dart";
import "./widgets/custom_title.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1A1E3B)),
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  spacing: 30,
                  children: [
                    CircleAvatar(
                      radius: 120,
                      backgroundImage: AssetImage("assets/logo.jpg"),
                    ),

                    CustomBanner(),

                    GenderToggle(),
                    CustomTitle(title: "Barbería"),
                    SingleChildScrollView(
                      padding: EdgeInsets.all(15),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 30,
                        children: [
                          CustomCard(
                            description: "Renueva tu corte de cabello",
                            label: "corte de cabello",
                            title: "Corte de cabello",
                            price: "150",
                            img: "banner.jpg",
                          ),
                          CustomCard(
                            description: "Personaliza tu barba como quieras",
                            label: "barba",
                            title: "Cuidado y Estilo personal",
                            price: "350",
                            img: "corte_barba.jpg",
                          ),
                        ],
                      ),
                    ),

                    CustomTitle(title: "Estilismo"),

                    SingleChildScrollView(
                      padding: EdgeInsets.all(15),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 30,
                        children: [
                          CustomCard(
                            description:
                                "Prueba con peinados unicos y detergentes",
                            label: "peinados",
                            title: "Peinados Únicos",
                            price: "400",
                            img: "cuidado_cabello.jpg",
                          ),
                          CustomCard(
                            description: "Personaliza tu estilo como quieras",
                            label: "alisado y descuentos",
                            title: "Cambia tu estilo",
                            price: "350",
                            img: "cuidado_cabello2.jpg",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
