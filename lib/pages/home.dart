import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const name = "home";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
        children: [
          _Background(),

          Positioned(
            left: width * .1,
            top: height * .1,
            right: width * .1,
            child: Container(
              width: width * .8,
              height: height * .35,
              child: UnDraw(
                illustration: UnDrawIllustration.a_day_at_the_park,
                color: Colors.green,
                fit: BoxFit.contain,
                semanticLabel: "koso",
              ),
            ),
          ),

          Positioned(
            top: height * .53,
            left: width * .2,
            child: Container(
              child: Column(
                spacing: 20,
                children: [
                  SizedBox(
                    width: width * .6,
                    child: Text(
                      "Tomate un respiro y ve a dar una vuelta!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * .6,
                    child: Text(
                      "Descansa admirando el paisaje, o realiza una caminata por el parque",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .6,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.green.shade900,
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Conocer más",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,

      child: CustomPaint(painter: _BoxPainter()),
    );
  }
}

class _BoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.green;
    paint.strokeWidth = 50;
    paint.style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(0, size.height);
    path.lineTo(0, size.height * .6);
    path.quadraticBezierTo(
      0,
      size.height * .5,
      size.width * .25,
      size.height * .5,
    );
    path.lineTo(size.width * .8, size.height * .5);
    path.quadraticBezierTo(
      size.width,
      size.height * .5,
      size.width,
      size.height * .4,
    );
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
