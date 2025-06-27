import 'package:flutter/material.dart';

class ContainerWraper extends StatelessWidget {
  final List<Widget> children;

  const ContainerWraper({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(spacing: 40, children: children),
    );
  }
}
