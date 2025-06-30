import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = "home_screen";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          // spacing: 60,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/sala-de-trabajo.png",
              // "assets/sala-de-trabajo.jpg",
              height: height / 4,
              // width: 800,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Sincroniza a tu equipo, tus tareas y tus metas para mejorar la productividad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                textAlign: TextAlign.center,
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Manten a tu equippo alineado y tus tareas organizadas para alcanzar tus objetivos rapido y facilmente.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding: WidgetStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 40),
                    ),
                    backgroundColor: WidgetStateProperty.all(colors.primary),
                    textStyle: WidgetStateProperty.resolveWith(
                      (_) => TextStyle(color: Colors.white),
                    ),
                  ),
                  child: Text(
                    "Crear Cuenta",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Icon(Icons.android, size: 60),
                Icon(Icons.apple, size: 60),
              ],
            ),
            Row(
              spacing: 12,
              children: [
                Text(
                  "¿Ya tienes una cuenta?",
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                Text(
                  "Inicia Sesion",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
