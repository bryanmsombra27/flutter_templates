// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(MenuIndex)
const menuIndexProvider = MenuIndexProvider._();

final class MenuIndexProvider extends $NotifierProvider<MenuIndex, int> {
  const MenuIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'menuIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$menuIndexHash();

  @$internal
  @override
  MenuIndex create() => MenuIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$menuIndexHash() => r'7a68a025f711ddec0d03a8126a8046bb86ab4814';

abstract class _$MenuIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
