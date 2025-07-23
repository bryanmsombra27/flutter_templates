import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/screens/register_screen.dart';
import 'package:templates/theme/theme.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shadow Delivery History',
      theme: ThemeApp.getTheme(),
      home: Scaffold(body: RegisterScreen()),
    );
  }
}
