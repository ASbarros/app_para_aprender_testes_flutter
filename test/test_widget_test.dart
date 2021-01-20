import 'package:app_para_aprender_testes/test_widget.dart';
import 'package:app_para_aprender_testes/test_widget2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test widget', (WidgetTester tester) async {
    await _createWidget(tester);
    // FINDING A TEXT
    expect(find.text('Test Widget'), findsOneWidget);
    // FINDING WIDGET BY KEY
    expect(find.byKey(TestWidget.buttonKey), findsOneWidget);
    // FINDING WIDGET BY TYPE
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
  testWidgets('Testando Gestos', (WidgetTester tester) async {
    await _createWidget2(tester);
    // TESTANDO GESTOS
    expect(find.text('0'), findsOneWidget);

    // Will receive a widget found by Finder
    await tester.tap(find.byType(FloatingActionButton));

    // We rebuild the screen
    await tester.pump();

    // expect that found the string containg number 1 and not 0 anymore
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

Future<void> _createWidget(WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: TestWidget(),
    ),
  );

  await tester.pump();
}

Future<void> _createWidget2(WidgetTester tester) async {
  await tester.pumpWidget(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: TestWidget2(),
    ),
  );

  await tester.pump();
}
