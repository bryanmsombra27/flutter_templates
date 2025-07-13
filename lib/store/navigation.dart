import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation.g.dart';

@riverpod
class MenuIndex extends _$MenuIndex {
  @override
  int build() {
    return 0;
  }

  void changeIndex(int index) {
    state = index;
  }
}
