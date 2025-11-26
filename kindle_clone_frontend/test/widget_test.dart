import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kindle_clone_frontend/main.dart' as app;

void main() {
  testWidgets('Bottom navigation renders and switches tabs', (WidgetTester tester) async {
    // KindleCloneApp is defined with const constructor, but wrapping via MaterialApp(home: ...)
    // prevents using const due to external library element; use non-const to avoid invalid_constant.
    await tester.pumpWidget(MaterialApp(home: app.KindleCloneApp()));

    // Expect Library screen title initially
    expect(find.text('Library'), findsOneWidget);

    // Tap Settings tab
    await tester.tap(find.byIcon(Icons.settings_outlined));
    await tester.pumpAndSettle();

    expect(find.text('Settings'), findsOneWidget);
  });
}
