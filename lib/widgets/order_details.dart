import 'package:flutter/material.dart';
import 'package:templates/widgets/cart_detail_item.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  static const name = "order_details";

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Orden #12",
                    style: textTheme.titleLarge!.copyWith(color: Colors.black),
                  ),
                  Text("Completado"),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Text("Detalles de la compra", style: textTheme.titleSmall),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Nombre", style: textTheme.bodySmall),
                        Text("Jhon Doe", style: textTheme.bodySmall),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Telefono", style: textTheme.bodySmall),
                        Text("123 456 789 1", style: textTheme.bodySmall),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Entrega", style: textTheme.bodySmall),
                        Text("En tienda", style: textTheme.bodySmall),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Pago", style: textTheme.bodySmall),
                        Text("Tarjeta", style: textTheme.bodySmall),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "Productos",
                style: textTheme.titleLarge!.copyWith(color: Colors.black),
              ),

              Container(
                child: Column(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
