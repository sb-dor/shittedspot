// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

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
