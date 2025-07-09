import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:templates/widgets/project.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  static const name = "projects_screen";

  Widget _projectCard(
    IconData icon,
    Color color,
    String subtitle,
    String title,
  ) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),
          Text(
            subtitle,
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 204, 205, 211),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 204, 205, 211),
        automaticallyImplyLeading: false,
        title: Row(
          spacing: 15,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(1000),
                child: Image.asset("assets/avatar.png"),
              ),
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Buenos dias",
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                Text(
                  "Yovabas Hernandez",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.min,
            children: [
              _SearchBar(colors: colors),
              GridView.count(
                shrinkWrap: true,

                childAspectRatio: .4,
                crossAxisCount: 2,
                // 👈 Esto genera 2 columnas
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.all(16),
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.orange.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          "09:30 AM",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "Entrevista",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        Divider(),
                        Text(
                          "09:30 AM",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "Reunion",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Divider(),
                        Text(
                          "09:30 AM",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          "Aprender diseño",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _projectCard(
                        Icons.library_books_sharp,
                        Colors.green.shade100,
                        "20 pendientes",
                        "Lista de pendientes",
                      ),
                      _projectCard(
                        Icons.access_time_rounded,
                        Colors.purple.shade100,
                        "20 pendientes",
                        "En Progreso",
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * .6,
                    child: ListTile(
                      title: Text(
                        "Proyectos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        "Actualmente tienes 5 proyectos activos",
                        maxLines: 2,
                        softWrap: true,
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                      ),
                    ),
                  ),

                  TextButton(onPressed: () {}, child: Text("Ver todos")),
                ],
              ),

              Project(secondColor: Colors.green),
              Project(secondColor: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(Icons.search),
        prefixIconColor: colors.primary,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        border: InputBorder.none,
        hintText: "Encuentra tu projecto",
      ),
    );
  }
}
