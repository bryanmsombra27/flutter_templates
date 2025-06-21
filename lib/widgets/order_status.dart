import 'package:flutter/material.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(shape: BoxShape.circle),

      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: [
            _CustomBox(
              icon: Icons.policy_outlined,
              title: "Por Reparar",
              quantity: "4",
            ),
            _CustomBox(
              icon: Icons.timer,
              title: "En espera",
              quantity: "0",
              color: Colors.yellowAccent.shade700,
            ),
            _CustomBox(
              icon: Icons.wb_shade_rounded,
              title: "Reparados",
              quantity: "0",
              color: Colors.lightBlue.shade500,
            ),
            _CustomBox(
              icon: Icons.warehouse_rounded,
              title: "Entregados",
              quantity: "0",
              color: Colors.green.shade500,
            ),
            _CustomBox(
              icon: Icons.warning,
              title: "Sin reparación",
              quantity: "0",
              color: Colors.orange.shade500,
            ),
            _CustomBox(
              icon: Icons.delivery_dining_sharp,
              title: "Entregados S/R",
              quantity: "0",
              color: const Color.fromARGB(255, 16, 68, 159),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomBox extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String quantity;

  const _CustomBox({
    super.key,
    this.color = Colors.red,
    required this.icon,
    required this.title,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Row(
        spacing: 40,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.white),
          Flexible(
            flex: 4,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,

                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  quantity,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
