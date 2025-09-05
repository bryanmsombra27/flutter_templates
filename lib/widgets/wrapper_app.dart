import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:templates/pages/index.dart';

class WrapperApp extends StatefulWidget {
  WrapperApp({super.key});

  @override
  State<WrapperApp> createState() => WrapperAppState();
}

class WrapperAppState extends State<WrapperApp> {
  int index = 0;
  final List<Widget> pages = [Filters(), Call(), Cart(), Profile()];

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: index, children: pages),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: colors.primary,
        unselectedItemColor: colors.secondaryContainer,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: index,

        onTap: (current) {
          setState(() {
            index = current;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.filter_solid),
            label: "Filtros",
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesome.phone_solid),
            label: "Llamadas",
          ),

          BottomNavigationBarItem(
            icon: Icon(FontAwesome.list_solid),
            label: "Orden",
          ),

          BottomNavigationBarItem(
            icon: Icon(FontAwesome.user),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
