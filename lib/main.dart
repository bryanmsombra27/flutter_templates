import 'package:flutter/material.dart';
import 'package:templates/widgets/animated_transaction_card.dart';
import 'package:templates/widgets/scale_and_rotate_transaction_card.dart';
import 'package:templates/widgets/scale_transaction_card.dart';
import "widgets/transaction_card.dart";
import "widgets/bouncing_transaction_card.dart";

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> widgets = [
    TransactionCard(),
    AnimatedTransactionCard(),
    BouncingTransactionCard(),
    ScaleTransactionCard(),
    ScaleAndRotateTransactionCard(),
  ];

  void changeScreen(int index, context) {
    setState(() {
      _currentIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 23, 123, 205)),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text("Transaccion"),
                onTap: () {
                  changeScreen(0, context);
                },
              ),
              ListTile(
                title: Text("Transaccion Animada"),
                onTap: () {
                  changeScreen(1, context);
                },
              ),
              ListTile(
                title: Text("Transaccion Animada con rebote"),
                onTap: () {
                  changeScreen(2, context);
                },
              ),
              ListTile(
                title: Text("Transaccion Animada con escala"),
                onTap: () {
                  changeScreen(3, context);
                },
              ),
              ListTile(
                title: Text("Transaccion Animada con escala y rotación"),
                onTap: () {
                  changeScreen(4, context);
                },
              ),
            ],
          ),
        ),
      ),

      backgroundColor: const Color.fromARGB(255, 23, 123, 205),
      body: widgets[_currentIndex],
    );
  }
}
