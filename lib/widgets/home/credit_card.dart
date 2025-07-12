import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: width * .9,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.credit_card),
              Text(
                "VISA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          Text("Card Number"),
          Text(
            "2148 3214 9812 2687",
            style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 5),
          ),

          SizedBox(height: 20),
          Text("Jhon Doe"),
        ],
      ),
    );
  }
}
