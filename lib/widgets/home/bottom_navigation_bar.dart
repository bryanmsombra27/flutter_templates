import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },

      backgroundColor: Colors.blue, // color de fondo
      selectedItemColor: Colors.white, // color del ítem seleccionado
      unselectedItemColor: Colors.white60, // color de ítems no seleccionados
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
      items: [
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
