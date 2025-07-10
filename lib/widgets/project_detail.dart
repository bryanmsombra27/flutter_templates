import 'package:flutter/material.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Row(
          spacing: 10,
          children: [
            Text(
              "Trabajar en App movil",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "En progreso",
                style: TextStyle(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          height: height * .06,
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 6,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Container(
                child: Text(
                  "Fecha inicio",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Container(
                child: Text(
                  "Fecha Entrega",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
              Container(
                child: Text(
                  "09/07/2025",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Container(
                child: Text(
                  "07/07/2025",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        Text(
          "Descripcion",
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          "lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
          style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
        ),
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
                  backgroundColor: Colors.purpleAccent,
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
    );
  }
}
