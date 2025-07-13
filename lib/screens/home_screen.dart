import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/screens/index.dart';
import 'package:templates/store/navigation.dart';
import 'package:templates/widgets/home/bottom_navigation_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  static const name = "home";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentIndex = ref.watch(menuIndexProvider);

    final List<Widget> screens = [
      Home(), // Placeholder for Home
      Stadistics(),
      const Center(child: Text("QR Screen")), // Placeholder for QR
      const Center(child: Text("Card Screen")), //6 Placeholder for Card
      const Center(child: Text("Profile Screen")), // Placeholder for Profile
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        title: const Text("My App", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
