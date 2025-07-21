import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final bool isActive;
  const Dot({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300), // Duración de la animación
      curve: Curves.easeInOut, // Curva de animación
      width: isActive ? 40 : 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
