import 'package:flutter/material.dart';

class FloatingDetails extends StatelessWidget {
  const FloatingDetails({
    super.key,
    required this.height,
    required this.width,
    required this.textTheme,
  });

  final double height;
  final double width;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: width * .9,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your balance"),
          Text("\$70,501,00", style: textTheme.titleLarge),
          SizedBox(height: 5),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                _IconBank(title: "Transfer"),
                _IconBank(title: "Request"),
                _IconBank(title: "Top Up"),
                _IconBank(title: "History"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IconBank extends StatelessWidget {
  final String title;
  const _IconBank({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.arrow_upward, color: Colors.white),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}
