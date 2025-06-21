import 'package:flutter/material.dart';

class Menu {
  final String title;
  final IconData icon;
  final String route;

  Menu({required this.title, required this.icon, this.route = "/"});
}

final List<Menu> menuItems = [
  Menu(title: "Inicio", icon: Icons.home),
  Menu(title: "Ordenes de trabajo", icon: Icons.work_history, route: "/orders"),
  Menu(title: "Ventas", icon: Icons.monetization_on),
  Menu(title: "Inventario", icon: Icons.edit_document),
  Menu(title: "Ingresos", icon: Icons.attach_money_outlined),
  Menu(title: "Compras | Gastos", icon: Icons.shopping_cart),
  Menu(title: "Mantenimientos", icon: Icons.wallet_giftcard),
  Menu(title: "Reportes", icon: Icons.document_scanner),
  Menu(title: "Configuración", icon: Icons.settings),
  Menu(title: "Salir", icon: Icons.logout),
];
