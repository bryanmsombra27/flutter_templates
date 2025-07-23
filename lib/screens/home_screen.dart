import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = "home_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double height = MediaQuery.sizeOf(context).height;
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
          Container(
            margin: EdgeInsets.only(top: 30),
            width: double.infinity,
            height: height * .25,
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 20,
                  children: [
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 120,
                      color: Colors.white,
                    ),
                    Column(
                      spacing: 20,
                      children: [
                        SizedBox(height: 1),
                        Text(
                          "Hoy",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "\$250",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      Text(
                        "|",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),

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
                ),
              ],
            ),
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
