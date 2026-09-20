// shitted spot starts here
//
// Consider an example with two Riverpod providers: Users and Products.
// Here, the Products provider relies on specific user data to load its products.
// In such scenarios, Riverpod documentation typically advises directly observing the Users provider from within the Products provider:

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'variant_1.g.dart';

/// I named it `userProvider` because the package itself generates the name `userProviderProvider`.
@Riverpod(name: 'userProvider')
class UserProvider extends _$UserProvider {
  @override
  Future<String> build() async {
    return Future.delayed(const Duration(seconds: 1), () => "Mark");
  }
}

@Riverpod(name: 'productsProvider')
class ProductsProvider extends _$ProductsProvider {
  @override
  Future<List<String>> build() async {
    try {
      /// we made our provider dependent on another provider - COUPLING
      final user = await ref.watch(userProvider.future);

      return await Future.delayed(
        const Duration(seconds: 1),
        () => List.generate(5, (index) => "$user's product ${index + 1}"),
      );
    } catch (error) {
      // Should we rethrow the error? Error.throwWithStacktrace(error, stackTrace);
      // Why should this module be aware of the error of absolutely another module?
      // If userProvider was terminated with an error, why should this one be terminated as well?
      // SRP violation.
      return [];
    }
  }
}
