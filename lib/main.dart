import 'package:flutter/material.dart';
import 'package:templates/screens/welcome.dart';
import 'package:templates/theme/theme_app.dart';

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
      theme: ThemeApp.theme(),
      home: Welcome(),
    );
  }
}
