import 'package:flutter/material.dart';
import 'package:templates/widgets/card_details_tab.dart';

class CardDetails extends StatelessWidget {
  final String img;
  final String title;

  const CardDetails({super.key, required this.img, required this.title});

  static const name = "card_details";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      floatingActionButton: Container(
        width: width * .92,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colors.primaryContainer,
        ),
        // margin: EdgeInsets.only(left: 30),
        padding: EdgeInsets.all(10),
        height: height * .1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 5,
              children: [
                Text("Precio"),
                RichText(
                  text: TextSpan(
                    text: "\$150",
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
            TextButton(
              onPressed: () {},
              child: Text("¡Rentar ya!", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_outlined),
                  ),
                  Text(
                    "Detalles del carro",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Icon(Icons.share_rounded),
                      Icon(Icons.favorite_outline_sharp),
                    ],
                  ),
                ],
              ),

              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.asset(img),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.star, color: Colors.amberAccent),
                        Text("4.6"),
                      ],
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      width: width * .9,
                      child: CardDetailsTab(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
