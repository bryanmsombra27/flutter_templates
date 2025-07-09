import 'package:flutter/material.dart';

class Project extends StatelessWidget {
  final MaterialColor firstColor;
  final MaterialColor secondColor;

  const Project({
    super.key,
    this.firstColor = Colors.green,
    required this.secondColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: firstColor.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "UI Design",
                  style: TextStyle(
                    color: firstColor.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: secondColor.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "High",
                  style: TextStyle(
                    color: secondColor.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            "Proyecto Infinito",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Progreso",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                "35%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),

          LinearProgressIndicator(
            value: .3,
            minHeight: 10,
            color: secondColor,
            borderRadius: BorderRadius.circular(20),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(1000),
                      child: Image.asset("assets/avatar.png"),
                    ),
                  ),
                  CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(1000),
                      child: Image.asset("assets/avatar.png"),
                    ),
                  ),
                  CircleAvatar(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(1000),
                      child: Image.asset("assets/avatar.png"),
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: secondColor,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ],
              ),

              Row(
                children: [
                  Icon(Icons.chat),
                  Text("123"),
                  SizedBox(width: 10),
                  Icon(Icons.check_circle),
                  Text("123"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
