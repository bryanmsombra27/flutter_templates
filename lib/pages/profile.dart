import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const name = "profile";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          spacing: 20,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
              radius: 70,
            ),

            Column(
              children: [
                Text(
                  "Jhon Doe",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "modificar foto",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),

            _ProfileItem(title: "Mi nombre", value: "Jhon Doe"),
            _ProfileItem(title: "Telefono", value: "123-456-7891"),
            _ProfileItem(title: "Correo", value: "test@test.com"),
            _ProfileItem(title: "Direccion", value: "5 brown street"),
          ],
        ),
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final String title;
  final String value;

  const _ProfileItem({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey.shade500,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(value, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
