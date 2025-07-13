import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/store/navigation.dart';

class CustomNavigationBar extends ConsumerStatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  ConsumerState<CustomNavigationBar> createState() =>
      _CustomNavigationBarState();
}

class _CustomNavigationBarState extends ConsumerState<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final int currentIndex = ref.watch(menuIndexProvider);
    final menuProvider = ref.read(menuIndexProvider.notifier);

    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        menuProvider.changeIndex(index);
      },
      backgroundColor: Colors.blue, // color de fondo
      selectedItemColor: Colors.white, // color del ítem seleccionado
      unselectedItemColor: Colors.white60, // color de ítems no seleccionados
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.graphic_eq),
          label: "Stadistics",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR"),
        BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Card"),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          label: "Profile",
        ),
      ],
    );
  }
}
