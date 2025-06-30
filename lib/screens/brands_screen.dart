import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:templates/screens/brand_details_screen.dart';

class BrandsScreen extends StatelessWidget {
  const BrandsScreen({super.key});

  static const name = "brands_screen";

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
            child: Image.asset("assets/pizza.png", fit: BoxFit.cover),
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
            top: 80,
            left: 20,
            child: Text(
              "Restaurants",
              style: TextStyle(fontSize: 30, color: Colors.white),
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
                  spacing: 40,
                  children: [
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
                    _BrandItem(colors: colors),
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

class _BrandItem extends StatelessWidget {
  const _BrandItem({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) {
              return BrandDetailsScreen();
            },
          ),
        );
      },
      child: Row(
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/logo.png", width: 100),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("MC Donald's"),
                Text("near by me"),
                Row(
                  children: [
                    RatingBar(
                      itemSize: 20,
                      itemCount: 5,
                      initialRating: 2,
                      onRatingUpdate: (rating) {},
                      direction: Axis.horizontal,
                      ratingWidget: RatingWidget(
                        full: Icon(Icons.star, color: colors.primary),
                        half: Icon(Icons.star_half),
                        empty: Icon(Icons.star_border),
                      ),
                    ),
                    Text("(200)"),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.favorite),
        ],
      ),
    );
  }
}
