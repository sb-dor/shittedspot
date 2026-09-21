// testing class with no package

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shittedspot/variants/variant_2/variant_2.dart';

import 'create_container.dart';

// class ProductsOfUserControllerMock
//     with Mock
//     implements ProductsOfUserController {}

final class UserProductsMockImpl with Mock implements IUserProducts {}

void main() {
  const String userId = '1';
  late final IUserProducts userProducts;

  setUpAll(() {
    userProducts = UserProductsMockImpl();
  });

  group('Variant 2 tests', () {
    //
    test('Test for empty', () async {
      // This code defines a createContainer function which creates that storage. Ideally, you should create this for each test
      // Setting up the container with the right overrides for each test can be error-prone.
      // Misconfiguration can lead to tests that pass incorrectly (false positives) or fail for reasons unrelated to the test's intent.
      // But what if there are a lot of providers? And they all depend on one another. At the same time, a single provider encompasses ten others... and each of those ten has ten more.
      // So what you should do at that moment? You will add those providers inside this overrides?
      final container = ProviderContainer.test(
        overrides: [
          productsOfUserProvider.overrideWith2(
            (ref) => ProductsOfUserController(userProducts),
          ),
        ],
      );

      when(() => userProducts.getProducts(userId))
          .thenAnswer((_) async => <String>[]);

      final notifier = container.read(
        productsOfUserProvider(userProducts).notifier,
      );

      await notifier.getProducts(userId);

      expect(notifier.state, isEmpty);
    });

    test('Test for non-empty', () async {
      //
      // This code defines a createContainer function which creates that storage. Ideally, you should create this for each test
      // Setting up the container with the right overrides for each test can be error-prone.
      // Misconfiguration can lead to tests that pass incorrectly (false positives) or fail for reasons unrelated to the test's intent.
      // But what if there are a lot of providers? And they all depend on one another. At the same time, a single provider encompasses ten others... and each of those ten has ten more.
      // So what you should do at that moment? You will add those providers inside this overrides?
      final container = createContainer(
        overrides: [
          productsOfUserProvider.overrideWith2(
            (ref) => ProductsOfUserController(userProducts),
          ),
        ],
      );

      when(() => userProducts.getProducts(userId))
          .thenAnswer((_) async => <String>['1', '2', '3']);

      final notifier = container.read(
        productsOfUserProvider(userProducts).notifier,
      );

      await notifier.getProducts(userId);

      expect(notifier.state, isNotEmpty);
    });
  });
}
