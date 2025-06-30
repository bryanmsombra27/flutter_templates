import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  static const name = "signin_screen";

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
                spacing: 10,
                children: [
                  Text(
                    "¿Cuál es tu correo?",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),

                  Text(
                    "Acabamos de enviarte un mensaje con un codigo de  4 digitos. Revisa tu correo e ingresa esos digitos para iniciar sesion",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),

                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.mail),
                      prefixIconColor: colors.primary,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      border: InputBorder.none,
                      hintText: "Ingresa tu correo",
                    ),
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
                      child: Text(
                        "Continuar",
                        style: TextStyle(color: Colors.white),
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
