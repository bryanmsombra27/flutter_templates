import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  static const name = "transaction_card";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Center(
      child: Container(
        width: width * .9,
        height: 370,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          spacing: 10,
          children: [
            Text(
              "\$637.50",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text("Jhon Doe"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_month),
                Text("31 agosto 2025 |"),
                Icon(Icons.timer),
                Text("10:30 a.m."),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Código de verificación"),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),

                  padding: EdgeInsets.all(5),
                  child: Text(
                    "3",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),

                  padding: EdgeInsets.all(5),
                  child: Text(
                    "5",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "0",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Divider(),
            Text("Datos de la transacción"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Celular"), Text("*** **** 321")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Destino"), Text("Shadow Market")],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Operación"), Text("0000153")],
            ),
          ],
        ),
      ),
    );
  }
}
