import 'package:flutter/material.dart';
import 'package:templates/widgets/index.dart';
import 'package:icons_plus/icons_plus.dart';

class Filters extends StatelessWidget {
  const Filters({super.key});

  static const name = "filters";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 25,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            spacing: 30,
            children: [
              IconContainer(
                category: "Bebidas",
                icon: FontAwesome.wine_bottle_solid,
              ),
              IconContainer(
                category: "Comida",
                icon: FontAwesome.utensils_solid,
                isActive: true,
              ),
              IconContainer(
                category: "Pasteles",
                icon: FontAwesome.cake_candles_solid,
              ),
              IconContainer(
                category: "Snacks",
                icon: FontAwesome.cookie_bite_solid,
              ),
            ],
          ),

          CustomTitle(title: "Ubicación"),

          SizedBox(
            height: height * .18,
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 2,
              shrinkWrap: true,
              padding: EdgeInsets.all(5),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                FilterOption(title: "México"),
                FilterOption(title: "Rena York", isActive: true),
                FilterOption(title: "Chicago"),
                FilterOption(title: "Paris"),
                FilterOption(title: "Tokyo"),
                FilterOption(title: "Brooklyn"),
              ],
            ),
          ),

          CustomTitle(title: "Filtrar Por"),

          Expanded(
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 2,
              padding: EdgeInsets.all(5),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: [
                FilterOption(title: "Abierto", isActive: true),
                FilterOption(title: "En venta"),
                FilterOption(title: "Ofertas"),
                FilterOption(title: "Verificados"),
                FilterOption(title: "Ordenados"),
                FilterOption(title: "Preferidos"),
              ],
            ),
          ),
          CustomTitle(title: "Precio"),
          CustomRangeSlider(),
        ],
      ),
    );
  }
}
