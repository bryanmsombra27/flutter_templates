import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const name = "home_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(20),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: colors.primary,
        centerTitle: true,
        actions: [Icon(Icons.notifications_outlined, color: Colors.white)],
        title: Text(
          "Restaurantes",
          style: textTheme.bodyMedium!.copyWith(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  _FilterButton(
                    icon: Icons.filter_alt_rounded,
                    text: "Ordenar",
                  ),
                  _FilterButton(
                    icon: Icons.keyboard_arrow_down,
                    text: "Localidad",
                  ),
                  _FilterButton(
                    icon: Icons.keyboard_arrow_down,
                    text: "Precio",
                  ),
                  _FilterButton(
                    icon: Icons.keyboard_arrow_down,
                    text: "Categoria",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const _FilterButton({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white10),
        iconAlignment: IconAlignment.end,
      ),
      onPressed: () {},
      label: Text(
        text,
        style: textTheme.bodySmall!.copyWith(fontSize: 14, color: Colors.white),
      ),
      icon: Icon(icon, color: Colors.white, size: 20),
    );
  }
}
