import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_practice_frontend/main.dart';
import 'package:ai_practice_frontend/widgets/accessible_button.dart';

void main() {
  testWidgets('App contains MainScaffold', (WidgetTester tester) async {
    await tester.pumpWidget(const AIPracticeApp());
    // As authentication always goes to LoginScreen in test, we look for the "Login" title bar
    expect(find.text('Login'), findsOneWidget);
  });

  testWidgets('LoginScreen displays input fields', (WidgetTester tester) async {
    await tester.pumpWidget(const AIPracticeApp());
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.widgetWithIcon(AccessibleButton, Icons.login), findsOneWidget);
  });
}
