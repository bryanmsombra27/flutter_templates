import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/screens/index.dart';
import 'package:templates/store/navigation.dart';
import 'package:templates/store/title.dart';
import 'package:templates/widgets/home/bottom_navigation_bar.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});

  static const name = "home";

  final List<Widget> screens = [
    Home(), // Placeholder for Home
    Stadistics(),
    const Center(child: Text("QR Screen")), // Placeholder for QR
    Wallet(),
    const Center(child: Text("Profile Screen")), // Placeholder for Profile
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int currentIndex = ref.watch(menuIndexProvider);
    final title = (currentIndex >= 0 && currentIndex < titles.length)
        ? titles[currentIndex]
        : '';

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        // title: const ,
        title: title.isNotEmpty
            ? Text(title, style: TextStyle(color: Colors.white))
            : null,
        centerTitle: true,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}
