import 'package:flutter/material.dart';
import 'package:templates/widgets/wallet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = "home_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Desactivar wallet",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Switch(value: true, onChanged: (v) {}),
            ],
          ),

          Wallet(
            title: "Hoy",
            quantity: 250,
            children: [
              Column(
                children: [
                  Text(
                    "Esta semana",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    "\$0",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              Text("|", style: TextStyle(color: Colors.white, fontSize: 40)),

              Column(
                children: [
                  Text(
                    "Ganancias Mensuales",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    "\$250",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.shade200,
            ),
            child: Column(
              spacing: 20,
              children: [
                Icon(Icons.tablet_android, size: 60),
                Text("¡Llega a mas personas!"),
                Text(
                  textAlign: TextAlign.center,
                  "No pierdas la oportunidad de ganar dinero con tu aplicacion, ¡compartelo con tus amigos!",
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(colors.primary),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Comparte tu experiencia",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
