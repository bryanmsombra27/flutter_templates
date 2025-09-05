import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:templates/widgets/index.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  static const name = "call";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
            radius: 60,
          ),
          Text(
            "Jhon Doe",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            "Repartidor a cargo",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.grey.shade500,
            ),
          ),

          CallButtons(),
          SizedBox(
            width: MediaQuery.of(context).size.width * .6,
            child: TextButton.icon(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                ),
              ),
              onPressed: () {},
              icon: Icon(
                Icons.phone_missed_sharp,
                color: Colors.white,
                size: 30,
              ),
              label: Text(""),
            ),
          ),
        ],
      ),
    );
  }
}
