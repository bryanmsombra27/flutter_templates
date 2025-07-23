import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wallet_store.g.dart';

@riverpod
class WalletStore extends _$WalletStore {
  @override
  bool build() => true;

  void toggleState() {
    state = !state;
  }
}
