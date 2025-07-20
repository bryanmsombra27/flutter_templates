import 'package:flutter/material.dart';
import 'package:templates/widgets/index.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const name = "home";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TextField(
            autofocus: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(gapPadding: 12),

              suffixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 25,
              ),
              hintText: "Search for food,brand, category, or cuisine",
            ),
          ),
          CustomCarrousel(),
          HomeCategories(),
          HomeMostPopular(),
          HomeFoodCampaign(),
        ],
      ),
    );
  }
}
