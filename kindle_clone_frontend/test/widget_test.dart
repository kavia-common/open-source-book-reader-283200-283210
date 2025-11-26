import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kindle_clone_frontend/app.dart';

void main() {
  testWidgets('Bottom navigation renders and switches tabs', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: KindleApp()));

    // Expect Library screen title initially
    expect(find.text('Library'), findsOneWidget);

    // Tap Settings tab
    await tester.tap(find.byIcon(Icons.settings_outlined));
    await tester.pumpAndSettle();

    expect(find.text('Settings'), findsOneWidget);
  });
}
