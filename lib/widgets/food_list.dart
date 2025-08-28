import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/data/food.dart';
import 'package:templates/store/food_store.dart';

class FoodList extends ConsumerWidget {
  const FoodList({super.key});

  static const name = "food_list";

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(foodStoreProvider);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (ctx, index) {
              final food = data[index];

              return FoodItem(food: food);
            },
          ),
        ),
      ),
    );
  }
}

class FoodItem extends ConsumerWidget {
  final Food food;

  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context, ref) {
    final addToCart = ref.read(foodStoreProvider.notifier).addToCart;

    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(10),
                child: Image.asset("assets/${food.img}", width: 150),
              ),

              Column(
                spacing: 30,
                children: [
                  SizedBox(
                    width: 150,
                    child: Text(
                      food.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  Text(
                    "\$${food.price}",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  if (!food.wasAdded)
                    GestureDetector(
                      onTap: () {
                        addToCart(food.id);
                      },
                      child: Icon(Icons.shopping_cart, size: 30),
                    ),

                  if (food.wasAdded)
                    Row(
                      spacing: 20,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.remove),
                        Text("1"),
                        Icon(Icons.add),
                      ],
                    ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
