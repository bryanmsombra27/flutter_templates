import 'package:flutter/material.dart';
import 'package:templates/screens/home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  static const name = "welcome";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "assets/camioneta-azul.jpg",
            height: height * .5,
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),

          RichText(
            textAlign: TextAlign.center,

            text: TextSpan(
              text: "La mejor experiencia para \t",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
              ),
              children: [
                TextSpan(
                  text: "rentar carros \n",
                  style: TextStyle(color: colors.primary),
                ),
                TextSpan(text: "del mundo"),
              ],
            ),
          ),

          Text(
            textAlign: TextAlign.center,
            "lorem ipsum dolor sit amet consectetur adipisicing elit. Quia, voluptate! lorem ipsum ",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            width: width * .8,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (c) {
                      return Home();
                    },
                  ),
                );
              },
              child: Text("Comencemos!", style: TextStyle(color: Colors.white)),
            ),
          ),

          Row(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("¿Ya tienes una cuenta?", style: TextStyle(fontSize: 18)),
              Text(
                "Inicia Sesion",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
