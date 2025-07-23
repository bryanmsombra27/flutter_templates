import 'package:flutter/material.dart';
import 'package:templates/screens/layout_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  static const name = "register_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Column(
        spacing: 20,
        children: [
          SizedBox(height: 70),

          CircleAvatar(
            backgroundImage: AssetImage("assets/shadow-delivery.jpg"),
            maxRadius: 100,
          ),
          Text(
            "Registrate",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),

          SizedBox(
            width: width * .85,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),

                hintText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),

          SizedBox(
            width: width * .85,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),

                hintText: "Password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
              ),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text("Acepto los términos y condiciones"),
            ],
          ),

          SizedBox(
            width: width * .85,
            child: TextButton(
              style: ButtonStyle(
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
                      return LayoutScreen();
                    },
                  ),
                );
              },
              child: Text(
                "Registrarse",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
