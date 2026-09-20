import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shittedspot/variants/variant_1/variant_1.dart';

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
  }

  // write
  @override
  Widget build(BuildContext context) {
    final prUp = ref.watch(productsProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Variant 1')),
      body: switch (prUp) {
        AsyncLoading<List<String>>() => Center(
          child: CircularProgressIndicator(),
        ),
        AsyncData<List<String>> data => ListView.builder(
          itemCount: data.value.length,
          itemBuilder: (context, index) => Text(data.value[index]),
        ),
        AsyncError<List<String>>() => Center(child: Text('Error')),
      },
    );
  }
}
