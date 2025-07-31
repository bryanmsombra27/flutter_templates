import 'package:flutter/material.dart';
import 'package:templates/widgets/transaction_card.dart';

class ScaleAndRotateTransactionCard extends StatefulWidget {
  const ScaleAndRotateTransactionCard({super.key});

  @override
  State<ScaleAndRotateTransactionCard> createState() =>
      _ScaleAndRotateTransactionCardState();
}

class _ScaleAndRotateTransactionCardState
    extends State<ScaleAndRotateTransactionCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.1,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _rotationAnimation =
        Tween<double>(begin: 0.0, end: 2 * 3.1416) // 360 grados
            .animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
            );

    // Empieza la animación después de 1 segundo
    Future.delayed(Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Transform.rotate(
              angle: _rotationAnimation.value,
              child: child,
            ),
          );
        },
        child: TransactionCard(),
      ),
    );
  }
}
