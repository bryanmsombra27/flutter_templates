import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CallButtons extends StatelessWidget {
  const CallButtons({super.key});

  static const name = "call_buttons";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return SizedBox(
      height: height * .4,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        padding: EdgeInsets.all(10),
        crossAxisSpacing: 5,
        mainAxisSpacing: 50,
        children: [
          _CallItem(
            icon: FontAwesome.phone_solid,
            isActive: true,
            label: "Altavoz",
          ),

          _CallItem(icon: FontAwesome.pause_solid, label: "En espera"),
          _CallItem(icon: FontAwesome.video_solid, label: "Video llamada"),

          _CallItem(icon: FontAwesome.microphone_solid, label: "Silenciar"),
          _CallItem(icon: FontAwesome.keyboard_solid, label: "Teclado"),
          _CallItem(
            icon: FontAwesome.user_plus_solid,
            label: "añadir personas",
          ),
        ],
      ),
    );
  }
}

class _CallItem extends StatelessWidget {
  bool isActive;
  final IconData icon;
  final String label;

  _CallItem({
    super.key,
    this.isActive = false,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      spacing: 10,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isActive ? colors.primary : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(icon, color: isActive ? Colors.white : null),
        ),
        Flexible(
          child: Text(
            textAlign: TextAlign.center,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.visible,
            label,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
