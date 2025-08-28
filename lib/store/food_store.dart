import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:templates/data/food.dart';

part 'food_store.g.dart';

@riverpod
class FoodStore extends _$FoodStore {
  @override
  List<Food> build() => [
    Food(
      img: "combo_buguer.jpg",
      name: "Combo Burguer Completo",
      price: 200,

      wasAdded: false,
    ),
    Food(
      img: "combo_medio.jpg",
      name: "Combo Burguer Casi Completo",
      price: 150,

      wasAdded: false,
    ),
    Food(
      img: "combo_pobre.jpg",
      name: "Hamburguesa ",
      price: 100,

      wasAdded: false,
    ),
    Food(
      img: "manzana.jpg",
      name: "Postre de Manzana",
      price: 50,

      wasAdded: false,
    ),
    Food(img: "piña.jpg", name: "Postre de Piña", price: 50, wasAdded: false),
  ];
  void addToCart(String id) {
    state = state.map((item) {
      if (item.id == id) {
        return item.copyWith(wasAdded: true);
      }

      return item;
    }).toList();
  }
}
