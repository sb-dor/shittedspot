// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// this part is good for now

@ProviderFor(CounterProvider)
final counterProviderProvider = CounterProviderProvider._();

/// this part is good for now
final class CounterProviderProvider
    extends $NotifierProvider<CounterProvider, int> {
  /// this part is good for now
  CounterProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'counterProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$counterProviderHash();

  @$internal
  @override
  CounterProvider create() => CounterProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$counterProviderHash() => r'52eece3d04bb53cd6b915c074f6b13b1ab0bf607';

/// this part is good for now

abstract class _$CounterProvider extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

/// I named it `userProvider` because the package itself generates the name `userProviderProvider`.

@ProviderFor(UserProvider)
final userProvider = UserProviderProvider._();

/// I named it `userProvider` because the package itself generates the name `userProviderProvider`.
final class UserProviderProvider
    extends $AsyncNotifierProvider<UserProvider, String> {
  /// I named it `userProvider` because the package itself generates the name `userProviderProvider`.
  UserProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userProviderHash();

  @$internal
  @override
  UserProvider create() => UserProvider();
}

String _$userProviderHash() => r'c896d199a9258ae8362c714385735b1a22a5cd8d';

/// I named it `userProvider` because the package itself generates the name `userProviderProvider`.

abstract class _$UserProvider extends $AsyncNotifier<String> {
  FutureOr<String> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<String>, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<String>, String>,
              AsyncValue<String>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(ProductsProvider)
final productsProvider = ProductsProviderProvider._();

final class ProductsProviderProvider
    extends $AsyncNotifierProvider<ProductsProvider, List<String>> {
  ProductsProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$productsProviderHash();

  @$internal
  @override
  ProductsProvider create() => ProductsProvider();
}

String _$productsProviderHash() => r'a70a112791fbeeb8ee4c3db4df2799afdb5912e0';

abstract class _$ProductsProvider extends $AsyncNotifier<List<String>> {
  FutureOr<List<String>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
