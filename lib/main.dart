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
      title: 'Shadow Todos App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          // 0xFF  = # #
          seedColor: const Color(0xFF1884fc),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
