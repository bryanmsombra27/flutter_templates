import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/store/animate_coordination.dart';
import 'package:templates/store/index_store.dart';

class RotatingIconButton extends ConsumerStatefulWidget {
  const RotatingIconButton({super.key});

  @override
  ConsumerState<RotatingIconButton> createState() => _RotatingIconButtonState();
}

class _RotatingIconButtonState extends ConsumerState<RotatingIconButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    // Corre la animación de 0 a 1 y regresa a 0
    _controller.forward(from: 0).then((_) {
      _controller.reverse();
    });

    // Aquí llamas tu función
    ref.read(indexStoreProvider.notifier).changeIndex();
    // Lanza trigger de animación para el texto
    ref.read(animateCoordinationProvider.notifier).setTiming();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: RotationTransition(
        turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
        child: const Icon(Icons.refresh, color: Colors.white, size: 30),
      ),
    );
  }
}
