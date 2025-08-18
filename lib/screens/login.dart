import 'package:flutter/material.dart';
import 'package:templates/screens/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  static const name = "login";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: colors.primaryContainer,
        centerTitle: true,
        title: Text(
          "Shadow Access Control",
          style: TextStyle(color: colors.primary, fontWeight: FontWeight.bold),
        ),
      ),

      body: SafeArea(
        child: Center(
          child: Container(
            width: width * .9,
            height: height * .4,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              spacing: 20,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 10,
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: colors.primaryContainer,
                        size: 45,
                      ),
                      Text(
                        "Iniciar Sesión",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: colors.primary,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: width * .8,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Usuario",

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: width * .8,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Contraseña",
                      suffixIcon: Icon(Icons.remove_red_eye_outlined),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width * .8,
                  child: TextButton.icon(
                    style: ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(12)),
                      backgroundColor: WidgetStatePropertyAll(colors.primary),
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (c) {
                            return Home();
                          },
                        ),
                      );
                    },
                    icon: Icon(Icons.login, color: Colors.white, size: 25),
                    label: Text(
                      "Entrar",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
