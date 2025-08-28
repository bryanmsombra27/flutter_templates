import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:templates/data/food.dart';
import 'package:templates/store/food_store.dart';

part 'cart_store.g.dart';

@riverpod
class CartStore extends _$CartStore {
  @override
  List<CartItem> build() => [];

  void add(String id) {
    final data = ref.read(foodStoreProvider);

    final food = data.firstWhere((p) => p.id == id);
    final bool wasAdded = state.any((p) => p.id == id);

    if (wasAdded) {
      state = state.map((item) {
        if (item.id == id) {
          return item.copyWith(qty: item.qty + 1);
        }

        return item;
      }).toList();
    } else {
      state = [
        ...state,
        CartItem(
          qty: 1,
          name: food.name,
          img: food.img,
          id: id,
          price: food.price,
        ),
      ];
    }
  }

  void decreaseCart(String id) {
    state = state.map((item) {
      if (item.id == id && item.qty > 1) {
        return item.copyWith(qty: item.qty - 1);
      }

      return item;
    }).toList();
  }

  void remove(String id) {
    //  ESTADO INMUTABLE  Y ASIGNACION
    // final filterState = [...state];
    // filterState.removeWhere((item) => item.id == id);

    // state = filterState;

    state = state.where((item) => item.id != id).toList();
  }

  void clearCart() {
    state = [];
  }
}
