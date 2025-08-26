import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'animate_coordination.g.dart';

@riverpod
class AnimateCoordination extends _$AnimateCoordination {
  @override
  int build() => 0;
  void setTiming() {
    state = 1;
  }
}
