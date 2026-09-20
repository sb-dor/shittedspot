import 'package:flutter_riverpod/flutter_riverpod.dart';

/// much more better, cause you are passing the repository impl you want
final productsOfUserProvider = NotifierProvider.family
    .autoDispose<ProductsOfUserController, List<String>, IUserProducts>(
      ProductsOfUserController.new,
    );

final userProviderRepo = UserProductsRepository();

/// you are strictly depend on UserProductsRepository and you cant test ProductsOfUserController with any passing repo you want
// final productsOfUserProvider = NotifierProvider.autoDispose(
//   () => ProductsOfUserController(UserProductsRepository()),
// );

abstract interface class IUserProducts {
  Future<List<String>> getProducts(String userId);
}

class UserProductsRepository implements IUserProducts {
  @override
  Future<List<String>> getProducts(String userId) => Future.delayed(
    const Duration(seconds: 1),
    () => List.generate(5, (index) => "product ${index + 1}"),
  );
}

class ProductsOfUserController extends Notifier<List<String>> {
  ProductsOfUserController(this._repository);

  final IUserProducts _repository;

  @override
  List<String> build() {
    return <String>[];
  }

  Future<void> getProducts(String userId) async {
    state = List.of(await _repository.getProducts(userId));
  }
}
