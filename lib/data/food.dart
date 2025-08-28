import 'package:uuid/uuid.dart';

// final List<Food> data = [
//   Food(
//     img: "combo_buguer.jpg",
//     name: "Combo Burguer Completo",
//     price: 200,

//     wasAdded: false,
//   ),
//   Food(
//     img: "combo_medio.jpg",
//     name: "Combo Burguer Casi Completo",
//     price: 150,

//     wasAdded: false,
//   ),
//   Food(
//     img: "combo_pobre.jpg",
//     name: "Hamburguesa ",
//     price: 100,

//     wasAdded: false,
//   ),
//   Food(
//     img: "manzana.jpg",
//     name: "Postre de Manzana",
//     price: 50,

//     wasAdded: false,
//   ),
//   Food(img: "piña.jpg", name: "Postre de Piña", price: 50, wasAdded: false),
// ];

final uuid = Uuid();

class Food {
  String id;
  final String name;
  final String img;
  final double price;

  final bool wasAdded;

  Food({
    required this.img,
    required this.name,
    required this.price,
    required this.wasAdded,
  }) : id = uuid.v8();

  Food copyWith({String? img, double? price, bool? wasAdded, String? name}) {
    return Food(
      name: name ?? this.name,
      img: img ?? this.img,
      price: price ?? this.price,
      wasAdded: wasAdded ?? this.wasAdded,
    );
  }
}

class CartItem {
  final int qty;
  final String name;
  final String img;
  final String id;
  final double price;

  CartItem({
    required this.qty,
    required this.name,
    required this.img,
    required this.id,
    required this.price,
  });

  CartItem copyWith({
    int? qty,
    String? name,
    String? img,
    String? id,
    double? price,
  }) {
    return CartItem(
      qty: qty ?? this.qty,
      name: name ?? this.name,
      img: img ?? this.img,
      id: id ?? this.id,
      price: price ?? this.price,
    );
  }
}
