import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RestaurantCard extends StatelessWidget {
  final String title;
  final String location;
  final String price;
  final String img;

  const RestaurantCard({
    super.key,
    required this.title,
    required this.location,
    required this.price,
    required this.img,
  });

  static const name = "restaurant_card";

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 5,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.asset(img, fit: BoxFit.cover),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            spacing: 10,
            children: [
              _RatingTrip(),
              Text(
                "4.8  (100 Opiniones)",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            spacing: 20,
            children: [Icon(Icons.location_on_outlined), Text(location)],
          ),
          SizedBox(height: 10),
          Text(
            "\$$price/entrada",
            style: textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}

class _RatingTrip extends StatelessWidget {
  const _RatingTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 5,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemSize: 24,
      // itemSize: 12,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 2),
      itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
      onRatingUpdate: (rating) {},
    );
  }
}
