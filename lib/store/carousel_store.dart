import 'package:riverpod_annotation/riverpod_annotation.dart';

part "carousel_store.g.dart";

@riverpod
class CarouselState extends _$CarouselState {
  @override
  int build() => 0;

  void changeIndex(int index) {
    state = index;
  }
}
