import 'package:flutter/material.dart';
import 'package:templates/screens/jokes.dart';
import 'package:templates/screens/roast.dart';
import 'package:templates/widgets/banner.dart';
import 'package:templates/widgets/category_card.dart';
import 'package:templates/widgets/info.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFE7432)),
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
      ),
      home: _Home(),
    );
  }
}

class _Home extends StatefulWidget {
  const _Home({super.key});

  @override
  State<_Home> createState() => _HomeState();
}

class _HomeState extends State<_Home> {
  Widget body = Roast();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 30),
        title: RichText(
          text: TextSpan(
            text: 'SATIRAS',

            style: TextStyle(
              color: colors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: ' A DOMICILIO',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [Icon(Icons.favorite, color: Colors.red)],
      ),

      // body: Roast(),
      body: body,

      bottomNavigationBar: Container(
        color: colors.onPrimaryFixedVariant,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  body = Roast();
                });
              },
              child: Icon(Icons.home, color: Colors.white),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  body = Jokes();
                });
              },
              child: Icon(Icons.language, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
