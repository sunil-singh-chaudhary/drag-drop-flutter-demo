// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:testwidgets_demo/main.dart';

void main() {
  testWidgets('This is My First test started', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing); // widget with 1 can not be found

    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);

    //   String textFieldValue = '';

    //   await tester.pumpWidget(
    //     MaterialApp(
    //       home: Scaffold(
    //         body: Container(
    //           child: TextField(
    //             onChanged: (value) {
    //               textFieldValue = value;
    //             },
    //           ),
    //         ),
    //       ),
    //     ),
    //   );

    //   await tester.enterText(find.byType(TextField), 'Hello, World!');
    //   await tester.pump();

    //   expect(textFieldValue, 'Hello, World!');
  });
}
