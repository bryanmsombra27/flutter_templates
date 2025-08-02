import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({super.key});

  static const name = "banner";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    final colors = Theme.of(context).colorScheme;
    final bannerHeight = height * .4;

    return SizedBox(
      width: double.infinity,
      height: bannerHeight,
      child: Stack(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(
                "assets/banner.jpg",
                height: bannerHeight,
                // width: ,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Positioned(
            top: 20,
            left: 20,

            // right: 20,
            child: Container(
              height: bannerHeight * .7,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                backgroundBlendMode: BlendMode.dstOut,
                color: Colors.black54,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 20,
                children: [
                  Text(
                    "Cortes de Cabello",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Renueva tu corte de cabello",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "\$150",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  SizedBox(
                    width: width * .4,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(colors.primary),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Ver más",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
