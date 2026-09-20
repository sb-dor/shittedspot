import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shittedspot/variants/counter/counter.dart';

/// {@template counter}
/// Counter widget.
/// {@endtemplate}
class Counter extends StatefulWidget {
  /// {@macro counter}
  const Counter({
    super.key, // ignore: unused_element_parameter
  });

  @override
  State<Counter> createState() => _CounterState();
}

/// State for widget Counter.
class _CounterState extends State<Counter> {
  /* #region Lifecycle */
  @override
  void initState() {
    super.initState();
    // Initial state initialization
  }

  @override
  void dispose() {
    // Permanent removal of a tree stent
    super.dispose();
  }
  /* #endregion */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title counter')),
      body: SizedBox.expand(
        child: Consumer(
          builder: (context, ref, _) {
            final counter = ref.watch(counterProviderProvider);
            return Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Text('$counter'),
                TextButton(
                  onPressed: () {
                    ref.read(counterProviderProvider.notifier).increment();
                  },
                  child: Text('press'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
