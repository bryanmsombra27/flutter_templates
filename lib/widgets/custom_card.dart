import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color color;
  final Color cardColor;
  final Color iconColor;
  final IconData icon;
  const CustomCard({
    super.key,
    required this.color,
    required this.icon,
    required this.cardColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: cardColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: iconColor,
                        ),

                        child: Icon(icon, size: 20, color: Colors.white),
                      ),
                      Flexible(
                        child: ListTile(
                          title: Text(
                            "Ventas del dia",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(
                            "\$0.00",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      // fixedSize: ,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.directional(
                          bottomStart: Radius.circular(12),
                          bottomEnd: Radius.circular(12),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 44,
                        vertical: 16,
                        // horizontal: 45,
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Generar reporte Ventas"),
                  ),
                  // Text(
                  //   "Generar reporte Ventas",
                  //   style: TextStyle(
                  //     height: 2,

                  //     backgroundColor: Colors.white,
                  //     color: Colors.black,
                  //     fontSize: 20,
                  //   ),
                  // ),
                ],
              ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 5),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Icon(Icons.check),
          ),
        ],
      ),
    );
  }
}
