import 'package:flutter/material.dart';
import 'package:templates/widgets/custom_card.dart';
import 'package:templates/widgets/example_paint.dart';
import 'package:templates/widgets/switchbox.dart';
import "./widgets//banner.dart";
import "./widgets/custom_title.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  spacing: 30,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: width * .95,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.fireplace),
                          Text("Shadow Barber Shop"),
                        ],
                      ),
                    ),

                    CustomBanner(),

                    GenderToggle(),
                    CustomTitle(),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        spacing: 30,
                        children: [CustomCard(), CustomCard()],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
