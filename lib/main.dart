import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shittedspot/products_widget.dart';

void main() {
  runApp(const App());
}

/// {@template main}
/// App widget.
/// {@endtemplate}
class App extends StatefulWidget {
  /// {@macro main}
  const App({
    super.key, // ignore: unused_element_parameter
  });

  @override
  State<App> createState() => _AppState();
}

/// State for widget App.
class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) =>
      ProviderScope(child: const MaterialApp(home: ProductsWidget()));
}
