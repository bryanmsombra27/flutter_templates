import 'package:flutter/material.dart';
import 'package:templates/models/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        drawer: Drawer(
          child: ListView.builder(
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final item = menuItems[index];

              return ListTile(
                leading: Icon(item.icon),
                title: Text(item.title),
              );
            },
          ),
        ),
        appBar: AppBar(title: Text("Shadow Orderfix")),
        body: _home(),
      ),
    );
  }
}

class _home extends StatelessWidget {
  const _home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 12,
        children: [
          _Card(color: Colors.red.shade100, icon: Icons.auto_graph_rounded),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final Color color;
  final IconData icon;
  const _Card({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.red.shade200,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),

                  child: Icon(icon, size: 20, color: Colors.white),
                ),
                Flexible(
                  child: ListTile(
                    title: Text("Ventas del dia"),
                    subtitle: Text("\$0.00"),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.check),
                ),
              ],
            ),
            Text("Generar reporte Ventas"),
          ],
        ),
      ),
    );
  }
}
