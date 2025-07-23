import 'package:flutter/material.dart';
import 'package:templates/widgets/wallet.dart';

class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  static const name = "order_detail_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ganancias",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            Wallet(
              title: "Balance",
              quantity: 1300,
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
                      "Ganancias Trimestrales",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "\$350",
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

            Text(
              "Pedidos",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            Row(
              spacing: 10,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: height * .3,
                  decoration: BoxDecoration(
                    color: colors.inversePrimary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "30",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: const Color.fromARGB(237, 255, 255, 255),
                        ),
                      ),

                      SizedBox(
                        width: width * .35,
                        child: Wrap(
                          runSpacing: 10,
                          children: [
                            Text(
                              "Órdenes de hoy",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * .3,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 124, 111, 210),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "100",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: const Color.fromARGB(237, 255, 255, 255),
                        ),
                      ),
                      SizedBox(
                        width: width * .35,
                        child: Wrap(
                          runSpacing: 10,
                          children: [
                            Text(
                              "Órdenes de esta semana",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                color: colors.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    "130",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: const Color.fromARGB(237, 255, 255, 255),
                    ),
                  ),
                  Text(
                    "Total de pedidos",

                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
