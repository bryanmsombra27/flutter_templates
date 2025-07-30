import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  static const name = "search";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;

    return Container(
      padding: EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white, size: 40),
                  Text(
                    "Acapulco, Mexico",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(230, 165, 161, 161),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Icon(Icons.notifications, color: Colors.white),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            child: Row(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 40,
                      color: colors.primary,
                    ),
                    hintText: "Buscar...",
                    border: OutlineInputBorder(),
                    constraints: BoxConstraints(maxWidth: width * .7),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Icon(
                    size: 40,
                    Icons.compare_arrows_outlined,
                    color: colors.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
