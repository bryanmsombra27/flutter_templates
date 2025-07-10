import 'dart:math' as math;
import 'package:flutter/material.dart';

class SemiCirclePainter extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;

  SemiCirclePainter({
    required this.progress,
    required this.backgroundColor,
    required this.progressColor,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Paint para el fondo del semicírculo
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    // Paint para la barra de progreso
    final progressPaint = Paint()
      ..color = progressColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2;

    // El rectángulo que contiene el círculo
    final rect = Rect.fromCircle(center: center, radius: radius);

    // Ángulo de inicio (0 grados o pi radianes para empezar a la izquierda)
    const startAngle = -math.pi;
    // Ángulo de barrido (0 grados o pi radianes para un semicírculo completo)
    const sweepAngle = math.pi;

    // Dibuja el arco de fondo
    canvas.drawArc(rect, startAngle, sweepAngle, false, backgroundPaint);

    // Dibuja el arco de progreso
    final progressAngle = sweepAngle * progress;
    canvas.drawArc(rect, startAngle, progressAngle, false, progressPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Redibuja solo si el progreso cambia
    return true;
  }
}

class SemiCircleProgressBar extends StatelessWidget {
  final double progress;
  final double size;
  final Color backgroundColor;
  final Color progressColor;
  final double strokeWidth;
  const SemiCircleProgressBar({
    Key? key,
    required this.progress,
    this.size = 200.0,
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.green,
    this.strokeWidth = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size / 2), // El alto es la mitad del ancho
      painter: SemiCirclePainter(
        progress: progress,
        backgroundColor: backgroundColor,
        progressColor: progressColor,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
