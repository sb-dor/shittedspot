import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shittedspot/variants/variant_2/variant_2.dart';

/// {@template products_widget}
/// ProductsWidget widget.
/// {@endtemplate}
class ProductsWidget extends ConsumerStatefulWidget {
  /// {@macro products_widget}
  const ProductsWidget({
    super.key, // ignore: unused_element_parameter
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProductsWidgetState();
}

/// State for widget ProductsWidget.
class _ProductsWidgetState extends ConsumerState<ProductsWidget> {
  @override
  void initState() {
    super.initState();
    ref
        .read(productsOfUserProvider(userProviderRepo).notifier)
        .getProducts('1');
  }

  // write
  @override
  Widget build(BuildContext context) {
    final prUp = ref.watch(productsOfUserProvider(userProviderRepo));
    return Scaffold(
      body: ListView.builder(
        itemCount: prUp.length,
        itemBuilder: (context, index) => Text(prUp[index]),
      ),
      // final prP = ref.watch(productsProvider);

      //  switch (prP) {
      //   AsyncLoading<List<String>>() => Center(
      //     child: CircularProgressIndicator(),
      //   ),
      //
      //   AsyncData<List<String>>(:final value) => ListView.builder(
      //     itemCount: value.length,
      //     itemBuilder: (context, index) => Text(value[index]),
      //   ),
      //   AsyncError<List<String>>() => Center(child: Text('Error')),
      // };,
    );
  }
}
