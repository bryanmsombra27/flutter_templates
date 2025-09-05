import 'package:flutter/material.dart';
import 'package:templates/widgets/cart_item.dart';
import 'package:templates/widgets/index.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  static const name = "cart";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 30,
        children: [
          Column(
            spacing: 30,
            children: [
              CartItem(
                img: "combo_buguer.jpg",
                price: "9.99",
                title: "Combo Deluxe",
              ),
              CartItem(
                img: "combo_medio.jpg",
                price: "5.99",
                title: "Combo Medio",
              ),
              CartItem(
                img: "combo_pobre.jpg",
                price: "2.99",
                title: "Combo Bajo",
              ),
            ],
          ),

          Column(
            spacing: 30,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),

                  Text(
                    "\$ 18.97",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: colors.primary,
                    ),
                  ),
                ],
              ),

              SizedBox(
                width: MediaQuery.of(context).size.width * .8,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(colors.primary),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Pagar", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
  }
}
