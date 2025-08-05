import 'package:flutter/material.dart';
import 'package:templates/details.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String description;
  final String label;
  final String price;
  final String img;

  const CustomCard({
    super.key,
    required this.title,
    required this.description,
    required this.label,
    required this.price,
    required this.img,
  });

  static const name = "custom_card";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    final colors = Theme.of(context).colorScheme;
    final maxCardWidth = width * .7;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (c) {
              return Details(img: img, title: title, description: description);
            },
          ),
        );
      },
      child: Container(
        width: maxCardWidth - 4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              offset: Offset(0, 10),
              spreadRadius: 1,
              blurStyle: BlurStyle.outer,
            ),
          ],
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(20),
          //   bottomRight: Radius.circular(20),
          // ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Image.asset("assets/$img", width: maxCardWidth),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: colors.primary,
                  ),
                  child: Text(label, style: TextStyle(color: Colors.white)),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                spacing: 10,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                  Text(
                    description,
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$$price",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: colors.primary,
                          fontSize: 26,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_double_arrow_right_outlined,
                        color: colors.primary,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
