import 'package:flutter/material.dart';
import 'package:templates/screens/reports_details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const name = "home";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) {
                return ReportsDetails();
              },
            ),
          );
        },
        child: Icon(Icons.report),
      ),
      appBar: AppBar(
        title: Text(
          "Shadow Access Control",
          style: TextStyle(color: colors.primary, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.logout)],
      ),
      body: SingleChildScrollView(
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            Center(
              child: Container(
                width: width * .9,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      offset: Offset(0, 1),
                      color: Colors.black45,
                      spreadRadius: .5,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shield_moon_rounded,
                      color: colors.primary,
                      size: 60,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        SizedBox(
                          // width: width * .5,
                          child: Text(
                            "!Bienvenido  de nuevo!",
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * .5,
                          child: Text(
                            "controla los accesos de los usuarios",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: height * .7,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                padding: EdgeInsets.all(10),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  _InfoCard(
                    color: Colors.blue,
                    icon: Icons.people,
                    title: "Usuarios",
                    quantity: "4",
                  ),
                  _InfoCard(
                    color: Colors.green,
                    icon: Icons.shield,
                    title: "Guardias",
                    quantity: "20",
                  ),
                  _InfoCard(
                    color: Colors.orange,
                    icon: Icons.person,
                    title: "Residentes",
                    quantity: "50",
                  ),
                  _InfoCard(
                    color: Colors.deepPurple,
                    icon: Icons.house,
                    title: "En casa",
                    quantity: "200",
                  ),
                  _InfoCard(
                    color: Colors.pink,
                    icon: Icons.location_city,
                    title: "A fuera",
                    quantity: "30",
                  ),
                  _InfoCard(
                    color: Colors.indigo,
                    icon: Icons.people,
                    title: "Visitantes",
                    quantity: "10",
                  ),
                ],
              ),
            ),

            SizedBox(
              width: width * .9,
              child: _InfoCard(
                color: Colors.cyan,
                icon: Icons.event_note_rounded,
                title: "Accesos de Hoy",
                quantity: "100",
              ),
            ),
            SizedBox(
              width: width * .9,
              child: _InfoCard(
                color: Colors.red,
                icon: Icons.event_note_rounded,
                title: "Incidentes",
                quantity: "4",
              ),
            ),

            SizedBox(
              height: height * .5,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                padding: EdgeInsets.all(10),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  _InfoCard(
                    color: Colors.teal,
                    icon: Icons.people,
                    title: "Usuarios",
                    isWhite: true,
                  ),
                  _InfoCard(
                    color: Colors.indigo,
                    icon: Icons.house,
                    title: "Casas",
                    isWhite: true,
                  ),
                  _InfoCard(
                    color: Colors.lightBlue,
                    icon: Icons.person,
                    title: "Residentes",
                    isWhite: true,
                  ),
                  _InfoCard(
                    color: Colors.lime,
                    icon: Icons.lock_clock,
                    title: "Guardianes",
                    isWhite: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  String quantity;
  final MaterialColor color;
  bool isWhite;

  _InfoCard({
    super.key,
    required this.icon,
    required this.title,
    required this.color,
    this.quantity = "",
    this.isWhite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isWhite ? color : color.shade100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, size: 45, color: isWhite ? Colors.white : color),
          if (quantity.isNotEmpty)
            Text(
              quantity,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
          Text(
            title,
            style: TextStyle(
              fontWeight: isWhite ? FontWeight.bold : FontWeight.normal,
              fontSize: 18,
              color: isWhite ? Colors.white : color,
            ),
          ),
        ],
      ),
    );
  }
}
