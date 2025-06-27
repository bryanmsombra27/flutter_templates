import 'package:flutter/material.dart';
import 'package:templates/screens/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      home: Scaffold(
        appBar: AppBar(actions: [Icon(Icons.notification_important)]),
        bottomNavigationBar: _NavigationBottomBar(),

        body: SingleChildScrollView(child: Home()),
      ),
    );
  }
}

class _NavigationBottomBar extends StatelessWidget {
  const _NavigationBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 20,
        children: [
          Icon(Icons.home),
          Icon(Icons.favorite),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.orangeAccent,
              borderRadius: BorderRadius.circular(100),
            ),
            alignment: Alignment.center,

            child: Center(child: Icon(Icons.shopping_cart)),
          ),
          Icon(Icons.bookmark),
          Icon(Icons.menu),
        ],
      ),
    );
  }
}
