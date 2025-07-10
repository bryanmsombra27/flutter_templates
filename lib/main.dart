import 'package:flutter/material.dart';
import 'package:templates/config/theme.dart';
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
      themeMode: ThemeMode.light,
      title: 'Shadow Bank',
      theme: AppTheme().getTheme(),
      home: Welcome(),
    );
  }
}
