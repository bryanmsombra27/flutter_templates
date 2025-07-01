import 'package:flutter/material.dart';
import 'package:templates/screens/projects_screen.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  static const name = "verification_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 205, 211),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 15,
                children: [
                  Text(
                    "OTP Verificacion",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),

                  Text(
                    "Acabamos de enviarte un mensaje con un codigo de  4 digitos. Revisa tu correo e ingresa esos digitos para iniciar sesion",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),

                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _numberVerification(width: width),
                      _numberVerification(width: width),
                      _numberVerification(width: width),
                      _numberVerification(width: width),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "03:00",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Reenviar Codigo",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: width * .9,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        backgroundColor: colors.primary,
                        textStyle: TextStyle(color: Colors.white),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => (ProjectsScreen()),
                            ),
                          );
                        },
                        child: Text(
                          "Verificar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _numberVerification extends StatelessWidget {
  const _numberVerification({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * .15,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(10),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            filled: true,

            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
