import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shittedspot/variants/counter/counter_widget.dart';

void main() {
  testWidgets('counter increments when pressed', (tester) async {
    await tester.pumpWidget(
      const ProviderScope(child: MaterialApp(home: Counter())),
    );

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.text('press'));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}
