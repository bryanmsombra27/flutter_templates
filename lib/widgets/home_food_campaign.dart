import 'package:flutter/material.dart';
import 'package:templates/widgets/container_wraper.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeFoodCampaign extends StatelessWidget {
  const HomeFoodCampaign({super.key});

  static const name = "home_food_campaign";

  @override
  Widget build(BuildContext context) {
    return ContainerWraper(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 1,
          children: [
            Text(
              "Otras Opciones",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            TextButton(onPressed: () {}, child: Text("Ver Todas")),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [_FoodCard(), _FoodCard(), _FoodCard()]),
        ),
      ],
    );
  }
}

class _FoodCard extends StatelessWidget {
  const _FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        spacing: 10,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Image.asset("assets/hamburguesa.png", width: 120),
          ),

          Column(
            spacing: 10,
            children: [
              Container(
                width: 150,
                child: Text(
                  "Hamburguesa",

                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                child: SizedBox(
                  width: 150,
                  child: Text("hamburguesa con papas y refresco", maxLines: 2),
                ),
              ),
              RatingBar(
                itemSize: 20,
                itemCount: 5,
                initialRating: 2,
                onRatingUpdate: (rating) {},
                direction: Axis.horizontal,
                ratingWidget: RatingWidget(
                  full: Icon(Icons.star),
                  half: Icon(Icons.star_half),
                  empty: Icon(Icons.star_border),
                ),
              ),
              SizedBox(
                width: 150,
                child: Row(
                  // spacing: 100,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$ 5", style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.add),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
