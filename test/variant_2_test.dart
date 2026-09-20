// testing class with no package

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shittedspot/variants/variant_2/variant_2.dart';

// class ProductsOfUserControllerMock
//     with Mock
//     implements ProductsOfUserController {}

final class UserProductsMockImpl with Mock implements IUserProducts {}

void main() {
  const String userId = '1';
  late final IUserProducts userProducts;
  late ProviderContainer container;

  setUpAll(() {
    userProducts = UserProductsMockImpl();
  });

  group('get products function test', () {
    test('Test for empty', () async {
      container = ProviderContainer.test(
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
      container = ProviderContainer.test(
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
