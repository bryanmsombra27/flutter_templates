import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/data/food.dart';
import 'package:templates/store/cart_store.dart';
import 'package:templates/store/food_store.dart';
import 'package:templates/widgets/food_list.dart';

class Cart extends ConsumerWidget {
  const Cart({super.key});

  static const name = "cart";

  @override
  Widget build(BuildContext context, ref) {
    final cart = ref.watch(cartStoreProvider);
    final removeFromCart = ref.read(cartStoreProvider.notifier).remove;
    final wasRemoved = ref.read(foodStoreProvider.notifier).removeFromCart;
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
                  Dismissible(
                    key: Key(item.id),
                    direction: DismissDirection.endToStart,
                    background: Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(Icons.delete, color: Colors.white),
                    ),
                    onDismissed: (direction) {
                      removeFromCart(item.id);
                      wasRemoved(item.id);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.name} eliminado')),
                      );
                    },
                    child: CartListItem(item: item),
                  ),
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
            child: Image.asset("assets/${item.img}", width: 150),
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
