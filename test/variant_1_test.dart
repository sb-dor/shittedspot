import 'package:flutter_test/flutter_test.dart';
import 'package:shittedspot/variants/variant_1/variant_1.dart';

import 'create_container.dart';

void main() {
  group('Variant 1 tests', () {
    test('Test for empty', () async {
      // This code defines a createContainer function which creates that storage. Ideally, you should create this for each test
      // Setting up the container with the right overrides for each test can be error-prone.
      // Misconfiguration can lead to tests that pass incorrectly (false positives) or fail for reasons unrelated to the test's intent.
      // But what if there are a lot of providers? And they all depend on one another. At the same time, a single supplier encompasses ten others... and each of those ten has ten more.
      // So what you should do at that moment? You will add those providers inside this overrides?
      final container = createContainer(
        overrides: [
          userProvider.overrideWithBuild(
            (ref, notifier) => Future.value("User"),
          ),
          productsProvider.overrideWithBuild(
            (ref, notifier) => Future.value(<String>['product1']),
          ),
        ],
      );

      final products = container.read(productsProvider.future);

      expectLater(
        products,
        completion(
          isA<List<String>>().having(
            (list) => list.isNotEmpty,
            'is not empty',
            equals(true),
          ),
        ),
      );
    });
  });
}
