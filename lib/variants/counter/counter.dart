import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter.g.dart';

/// this part is good for now
@riverpod
class CounterProvider extends _$CounterProvider {
  @override
  int build() {
    return 0;
  }

  void increment() => state++;
}
