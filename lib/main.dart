import 'package:flutter/material.dart';
import 'package:templates/models/menu.dart';
import "package:templates/widgets/custom_card.dart";

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
      child: SingleChildScrollView(
        child: Column(
          spacing: 12,
          children: [
            CustomCard(
              color: Colors.red.shade100,
              cardColor: Colors.red.shade200,
              iconColor: Colors.red,
              icon: Icons.auto_graph_rounded,
              label: "Ventas del dia",
              buttonLabel: "Generar reporte Ventas",
              price: "\$0.00",
              secondIcon: Icons.check,
            ),
            CustomCard(
              color: Colors.yellow.shade100,
              cardColor: Colors.yellow.shade700,
              iconColor: Colors.yellow.shade500,
              icon: Icons.account_balance_outlined,
              label: "Reparaciones del dia",
              buttonLabel: "Generar reporte Reparaciones",
              price: "\$0.00",
              secondIcon: Icons.check,
            ),
            CustomCard(
              color: Colors.blue.shade100,
              cardColor: Colors.blue.shade700,
              iconColor: Colors.blue.shade500,
              icon: Icons.shopping_cart,
              label: "Compras del dia",
              buttonLabel: "Generar reporte Compras",
              price: "\$0.00",
              secondIcon: Icons.check_circle_outline,
            ),
            CustomCard(
              color: Colors.green.shade100,
              cardColor: Colors.green.shade700,
              iconColor: Colors.green.shade500,
              icon: Icons.table_chart_rounded,
              label: "Total del dia",
              buttonLabel: "Generar reporte Caja",
              price: "\$0.00",
              secondIcon: Icons.check_circle_outline,
            ),
          ],
        ),
      ),
    );
  }
}
