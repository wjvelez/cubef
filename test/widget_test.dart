// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cubef/cubef.dart';
import 'package:flutter/material.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Cubef constructor', (WidgetTester tester) async {
    final sides = List.generate(6, (i) => Text('${i + 1}'));

    final cubef = Cubef(sides: sides);

    await tester.pumpWidget(
      MaterialApp(home: cubef),
    );

    expect(find.text('1'), findsOneWidget);
  });
}
