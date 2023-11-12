// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hw2/main.dart';

void main() {
  testWidgets('MyApp widget and its children are correctly created', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that MyApp widget is created.
    expect(find.byType(MyApp), findsOneWidget);

    // Verify that MaterialApp widget is created.
    expect(find.byType(MaterialApp), findsOneWidget);

    // Verify that Scaffold widget is created.
    expect(find.byType(Scaffold), findsOneWidget);

    // Verify that Padding widget is created.
    expect(find.byType(Padding), findsOneWidget);

    // Verify that Center widget is created.
    expect(find.byType(Center), findsOneWidget);

    // Verify that Column widget is created.
    expect(find.byType(Column), findsOneWidget);

    // Verify that HolaWidget is created.
    expect(find.byType(HolaWidget), findsOneWidget);

    // Verify that CounterWidget is created.
    expect(find.byType(CounterWidget), findsOneWidget);
  });
}
