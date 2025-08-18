import 'package:flutter/material.dart';

class ReportsDetails extends StatelessWidget {
  const ReportsDetails({super.key});

  static const name = "reports_details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Historial de Accesos")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
            spacing: 20,
            children: [
              _VisitInfo(
                color: Colors.red,
                name: "Visitante 1",
                state: "Adentro",
              ),
              _VisitInfo(
                color: Colors.red,
                name: "Visitante 2",
                state: "Adentro",
              ),
              _VisitInfo(
                color: Colors.green,
                name: "Visitante 3",
                state: "Salio",
              ),
              _VisitInfo(
                color: Colors.green,
                name: "Visitante 4",
                state: "Salio",
              ),
              _VisitInfo(
                color: Colors.green,
                name: "Visitante 5",
                state: "Salio",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _VisitInfo extends StatelessWidget {
  final String name;
  final String state;
  final MaterialColor color;

  const _VisitInfo({
    super.key,
    required this.name,
    required this.color,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name, style: TextStyle(fontSize: 18)),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.shade100,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Text(
            state,
            style: TextStyle(color: color, fontWeight: FontWeight.bold),
          ),
        ),
        Text("11:08", style: TextStyle(color: Colors.grey)),
        TextButton(
          onPressed: () {},
          child: Text("Ver", style: TextStyle(color: color)),
        ),
      ],
    );
  }
}
