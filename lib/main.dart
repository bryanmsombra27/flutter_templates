import 'package:flutter/material.dart';
import 'package:templates/info_card.dart';
import 'package:templates/parking_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Shadow Parking",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                spacing: 30,
                children: [
                  InfoCard(
                    color: Colors.blue,
                    icon: Icons.warehouse,
                    label: "¡Estacionate!",
                    availables: "200",
                    leftLabel: "Disponibles",
                    quantity: "400",
                    rightLabel: "Ocupadas",
                    taking: "100",
                    title: "Lugares \n disponibles",
                  ),
                  InfoCard(
                    color: Colors.green,
                    icon: Icons.person,
                    label: "¡Registrate!",
                    availables: "20",
                    leftLabel: "Activos",
                    quantity: "30",
                    rightLabel: "Inactivos",
                    taking: "10",
                    title: "Clientes",
                  ),
                  InfoCard(
                    color: Colors.orange,
                    icon: Icons.paypal,
                    label: "¡Paga!",
                    availables: "20",
                    leftLabel: "Pagados",
                    quantity: "\$20,200,364",
                    rightLabel: "Pendientes",
                    taking: "10",
                    title: "Gastos \nAdicionales",
                  ),
                  InfoCard(
                    color: Colors.purple,
                    icon: Icons.attach_money_sharp,
                    label: "¡Renta!",
                    availables: "20",
                    leftLabel: "Pagados",
                    quantity: "\$5,400,000",
                    rightLabel: "Faltantes",
                    taking: "60",
                    title: "Rentas \n",
                  ),

                  _Parking(),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Parking extends StatelessWidget {
  const _Parking({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .8,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.blue),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
            ),
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) {
                return ParkingMap();
              },
            ),
          );
        },
        child: Text(
          "Ver Estacionamientos",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
