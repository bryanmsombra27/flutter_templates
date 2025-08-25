import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const DetailCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  static const name = "detail_card";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                width: width * .6,
                child: Text(
                  description,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton.icon(
                style: ButtonStyle(
                  iconAlignment: IconAlignment.end,
                  backgroundColor: WidgetStatePropertyAll(Colors.orange),
                ),
                onPressed: () {},
                label: Text(
                  "Explora",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: Icon(Icons.arrow_right_alt_sharp, color: Colors.white),
              ),
            ],
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(icon, size: 80),
          ),
        ],
      ),
    );
  }
}
