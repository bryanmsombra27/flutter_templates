import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  static const name = "orders";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              "Pedidos Actuales",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            Center(
              child: Container(
                padding: EdgeInsets.all(30),
                width: width * .9,
                decoration: BoxDecoration(
                  color: colors.primaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _OrderInfo(
                      icon: Icons.playlist_add_check_circle,
                      quantity: "20",
                      title: "Hoy",
                    ),
                    _OrderInfo(
                      icon: Icons.playlist_add_check_circle,
                      quantity: "130",
                      title: "Esta semana",
                    ),
                    _OrderInfo(
                      icon: Icons.playlist_add_check_circle,
                      quantity: "420",
                      title: "Este mes",
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              width: width * .8,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(colors.primary),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Todas",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(onPressed: () {}, child: Text("Entregada")),
                    TextButton(onPressed: () {}, child: Text("Devolicones")),
                    TextButton(onPressed: () {}, child: Text("canceladas")),
                  ],
                ),
              ),
            ),

            _OrderDetails(colors: colors, title: "Orden #1  (1 articulo)"),
            _OrderDetails(colors: colors, title: "Orden #2  (1 articulo)"),
            _OrderDetails(colors: colors, title: "Orden #3  (1 articulo)"),
            _OrderDetails(colors: colors, title: "Orden #4  (1 articulo)"),
          ],
        ),
      ),
    );
  }
}

class _OrderDetails extends StatelessWidget {
  final String title;
  const _OrderDetails({required this.colors, required this.title});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.secondaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Entregado",
                style: TextStyle(
                  color: Colors.green,
                  height: 3,
                  backgroundColor: Colors.green.shade50,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("22 julio 2025 8:34 pm"), Text("Pago en efectivo")],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pagada",
                style: TextStyle(
                  color: colors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "\$ 230.50",

                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _OrderInfo extends StatelessWidget {
  final String title;
  final String quantity;
  final IconData icon;

  const _OrderInfo({
    required this.title,
    required this.quantity,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 5,
      children: [
        Text(title),
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon),
            Text(quantity, style: TextStyle(fontSize: 20)),
          ],
        ),
      ],
    );
  }
}
