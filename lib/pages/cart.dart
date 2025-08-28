import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/data/food.dart';
import 'package:templates/store/cart_store.dart';
import 'package:templates/widgets/food_list.dart';

class Cart extends ConsumerWidget {
  const Cart({super.key});

  static const name = "cart";

  @override
  Widget build(BuildContext context, ref) {
    final cart = ref.watch(cartStoreProvider);
    final double height = MediaQuery.sizeOf(context).height;

    final total = cart.fold(0.0, (acc, item) => acc + item.qty * item.price);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: height * .7,
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              final item = cart[index];

              return Column(
                children: [
                  SizedBox(height: 20),
                  CartListItem(item: item),
                ],
              );
            },
            itemCount: cart.length,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$$total",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ],
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.orange),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
              ),
            ),
            onPressed: () {},
            child: Text("Pagar", style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

class CartListItem extends StatelessWidget {
  final CartItem item;

  const CartListItem({super.key, required this.item});

  static const name = "cart";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    return Container(
      child: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset("assets/${item.img}", width: 100),
          ),
          Column(
            spacing: 10,
            children: [
              SizedBox(
                width: width * .4,
                child: Text(item.name, textAlign: TextAlign.center),
              ),
              Text("${item.price}"),
              CartCounter(id: item.id),
            ],
          ),
        ],
      ),
    );
  }
}
