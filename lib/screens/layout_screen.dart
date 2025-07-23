import 'package:flutter/material.dart';
import 'package:templates/screens/home_screen.dart';
import 'package:templates/screens/order_detail_screen.dart';
import 'package:templates/screens/orders.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  static const name = "layout_screen";

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  Widget children = HomeScreen();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

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

      body: children,

      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.blueGrey.shade100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: index == 0 ? colors.primary : null),
              onPressed: () {
                setState(() {
                  index = 0;
                  children = HomeScreen();
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_bag,
                color: index == 1 ? colors.primary : null,
              ),
              onPressed: () {
                setState(() {
                  index = 1;
                  children = Orders();
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.attach_money_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.list, color: index == 2 ? colors.primary : null),
              onPressed: () {
                setState(() {
                  index = 2;
                  children = OrderDetailScreen();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
