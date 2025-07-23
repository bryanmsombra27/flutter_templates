import 'package:flutter/material.dart';
import 'package:templates/screens/orders.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  static const name = "layout_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/shadow-delivery.jpg"),
              maxRadius: 20,
            ),
            Text(
              "Shadow Delivery",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            Icon(Icons.notifications),
          ],
        ),
      ),

      body: Orders(),

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.blueGrey.shade100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.shopping_bag), onPressed: () {}),
            IconButton(
              icon: Icon(Icons.attach_money_outlined),
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.list), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
