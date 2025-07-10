import 'package:flutter/material.dart';
import 'package:templates/widgets/semichart.dart';

class Graphic_taks extends StatelessWidget {
  const Graphic_taks({super.key, required this.height, required this.width});

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            Text(
              "Actividades",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Todos",
                style: TextStyle(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            SemiCircleProgressBar(progress: .6, strokeWidth: 12),
            Positioned(
              top: height / 15,
              right: width / 6,

              child: Text(
                "65%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.green),
              width: 20,
              height: 20,
            ),
            Text("Terminado"),
            Container(
              decoration: BoxDecoration(color: Colors.grey),
              width: 20,
              height: 20,
            ),
            Text("Pendiente"),
          ],
        ),
      ],
    );
  }
}
