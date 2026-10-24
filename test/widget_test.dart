import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:turlittle/main.dart';

void main() {
  testWidgets('Home shows city and navigates to favorites', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const TurtleWeatherApp());

    expect(find.text('San Pedro Sula'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.star));
    await tester.pumpAndSettle();

    expect(find.text('No favorites yet'), findsOneWidget);
  });
}
