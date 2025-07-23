import 'package:riverpod_annotation/riverpod_annotation.dart';

part "password_store.g.dart";

@riverpod
class PasswordStore extends _$PasswordStore {
  @override
  bool build() => true;

  void toggleVisibility() {
    state = !state;
  }
}
