// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:event_alerts/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CollegeAlertApp());

    // Verify that our app shows the welcome text.
    expect(find.text('Campus Alert'), findsOneWidget);
    expect(find.text('Continue as Admin'), findsOneWidget);
    expect(find.text('Continue as Student'), findsOneWidget);

    // Verify that we don't have the counter text.
    expect(find.text('0'), findsNothing);
  });
}
