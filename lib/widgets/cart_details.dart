import 'package:flutter/material.dart';
import 'package:templates/widgets/cart_detail_item.dart';
import 'package:templates/widgets/order_details.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({super.key});

  static const name = "cart_details";

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(title: Text("Carrito ")),
      body: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 20,
              children: [
                CartDetailItem(
                  img: "assets/zapatillas-deportivas-2.jpg",
                  title: "Tennis Deportivos 4 Life",
                  price: 200,
                ),
                CartDetailItem(
                  img: "assets/zapatillas-deportivas.jpg",
                  title: "Tennis Deportivos Groove Street",
                  price: 350,
                ),
                CartDetailItem(
                  img: "assets/traje-2.jpg",
                  title: "Saco de trabajo",
                  price: 100,
                ),
              ],
            ),

            Column(
              spacing: 10,
              children: [
                Divider(),
                Text("Total: \$650 ", style: textTheme.titleMedium),
                SizedBox(
                  width: width * .9,
                  height: 60,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        colors.primaryContainer,
                      ),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) {
                            return OrderDetails();
                          },
                        ),
                      );
                    },
                    child: Text("Confirmar Pedido"),
                  ),
                ),

                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
