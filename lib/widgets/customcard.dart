import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  final String img;
  final String title;
  final String price;

  const Customcard({
    super.key,
    required this.img,
    required this.title,
    required this.price,
  });

  static const name = "customcard";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        // color: colors.inversePrimary,
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height / 4,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.asset(img),
                ),
                Positioned(
                  top: 20,
                  right: 10,
                  child: Icon(Icons.favorite, color: Colors.red, size: 30),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  child: Container(
                    width: width * .2,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      spacing: 5,
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 20),
                        Text("4.6"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: colors.primaryContainer,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text("hibrido", style: TextStyle(height: 2)),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              RichText(
                text: TextSpan(
                  text: "\$$price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: colors.primary,
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: "/hr",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CardInfoItem(icon: Icons.cable_rounded, label: "Manual"),
              _CardInfoItem(icon: Icons.local_gas_station, label: "Diesel"),
              _CardInfoItem(
                icon: Icons.airline_seat_legroom_extra_rounded,
                label: "4 Asientos",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CardInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;
  const _CardInfoItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 5, children: [Icon(icon), Text(label)]);
  }
}
