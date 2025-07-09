import 'package:flutter/material.dart';
import 'package:templates/widgets/project.dart';
import 'package:templates/widgets/search.dart';

class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});

  static const name = "todo_list_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("To do list"),
            Icon(Icons.notification_important_outlined),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              CustomSearchBar(colors: colors),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.blue),
                        padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        spacing: 10,
                        children: [
                          Text("Design", style: TextStyle(color: Colors.white)),
                          CircleAvatar(child: Text("23")),
                        ],
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.grey.shade200,
                        ),
                        padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        spacing: 10,
                        children: [
                          Text(
                            "Illustrations",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "31",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.grey.shade200,
                        ),
                        padding: WidgetStateProperty.all(
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        spacing: 10,
                        children: [
                          Text(
                            "Development",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: Text(
                              "20",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Project(secondColor: Colors.blue),
              Project(secondColor: Colors.purple),
              Project(secondColor: Colors.amber),
              Project(secondColor: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
