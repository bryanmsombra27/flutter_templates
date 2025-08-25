import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'index_store.g.dart';

@riverpod
class IndexStore extends _$IndexStore {
  @override
  int build() => 0;
  void changeIndex() {
    if (state >= 4) {
      state = 0;
    } else {
      state += 1;
    }
  }
}
