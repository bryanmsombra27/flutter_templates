// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_store.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(FoodStore)
const foodStoreProvider = FoodStoreProvider._();

final class FoodStoreProvider extends $NotifierProvider<FoodStore, List<Food>> {
  const FoodStoreProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'foodStoreProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$foodStoreHash();

  @$internal
  @override
  FoodStore create() => FoodStore();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Food> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Food>>(value),
    );
  }
}

String _$foodStoreHash() => r'0b477df3c4bce2d2fca468f6125df1aa936dc5ac';

abstract class _$FoodStore extends $Notifier<List<Food>> {
  List<Food> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Food>, List<Food>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Food>, List<Food>>,
              List<Food>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
