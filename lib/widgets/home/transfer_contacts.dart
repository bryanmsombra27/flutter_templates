import 'package:flutter/material.dart';

class TransferContacts extends StatelessWidget {
  const TransferContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            maxRadius: 30,
            backgroundColor: Colors.blue,
            child: Icon(Icons.add, color: Colors.white, size: 30),
          ),
          CircleAvatar(
            maxRadius: 30,

            backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
          ),
          CircleAvatar(
            maxRadius: 30,

            backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
          ),
          CircleAvatar(
            maxRadius: 30,

            backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
          ),
          CircleAvatar(
            maxRadius: 30,

            backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
          ),
        ],
      ),
    );
  }
}
