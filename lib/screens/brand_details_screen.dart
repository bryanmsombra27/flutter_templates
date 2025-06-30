import 'package:flutter/material.dart';

class BrandDetailsScreen extends StatelessWidget {
  const BrandDetailsScreen({super.key});

  static const name = "brand_details_screen";

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SizedBox(
            // width: width,
            child: Image.asset("assets/logo.png", fit: BoxFit.cover),
          ),
          Positioned(
            // ),
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back, size: 30, color: Colors.white),
            ),
          ),

          Positioned(
            top: 150,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      spacing: 20,
                      children: [
                        Image.asset(
                          "assets/logo.png",
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                        Flexible(
                          flex: 2,
                          child: Column(
                            spacing: 12,
                            children: [
                              Text(
                                "Mac donalds",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Comida rapida para llevar"),
                            ],
                          ),
                        ),
                        Icon(Icons.favorite),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Abierto desde: "),
                        Text(
                          "11:00 AM  a  7:00 PM",
                          style: TextStyle(color: colors.primary),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: colors.primary),
                        Text(
                          "4.9 ",
                          style: TextStyle(
                            color: colors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text("(103000 reseñas)"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, color: colors.primary),
                        Text(
                          "Ubicacion",
                          style: TextStyle(
                            color: colors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: colors.primaryFixed,
                      ),
                      child: Row(
                        spacing: 20,
                        children: [
                          Text(
                            "Otros",
                            style: TextStyle(color: colors.primary),
                          ),
                          Text(
                            "hamburguesas",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "desayunos",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text("cenas", style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),

                    _DetailCardItem(width: width),
                    _DetailCardItem(width: width),
                    _DetailCardItem(width: width),
                    _DetailCardItem(width: width),
                    _DetailCardItem(width: width),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailCardItem extends StatelessWidget {
  const _DetailCardItem({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .9,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: Colors.black12,
            spreadRadius: 6,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 1),
          ),
          BoxShadow(
            blurRadius: 6,
            color: Colors.black12,
            spreadRadius: 6,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 10,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/hamburguesa.png",
              width: 150,
              fit: BoxFit.cover,
            ),
          ),

          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Shadow Burguer"),
                    SizedBox(
                      width: width * .3,
                      child: Text(
                        maxLines: 2,
                        softWrap: true,
                        "lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, iusto?",
                      ),
                    ),
                    Text(
                      "\$5.55",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Column(
            spacing: 20,
            children: [Icon(Icons.favorite), Icon(Icons.add)],
          ),
        ],
      ),
    );
  }
}
