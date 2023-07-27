import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hello_flutter/main.dart';

void main() {
  testWidgets('Input text field exists on UI', (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();

    await tester.pumpWidget(MyApp());

    final textFieldFinderEmail = find.byKey(Key('email-text'));
    final textFieldFinderName = find.byKey(Key('name-text'));

    final emailText = tester.widget<Text>(textFieldFinderEmail);
    final nameText = tester.widget<Text>(textFieldFinderName);

    expect(emailText, isA<Text>());
    expect(nameText, isA<Text>());
  });

  testWidgets('Input Fields show up after clicking the EDIT button',
      (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();

    await tester.pumpWidget(MyApp());

    await tester.tap(find.byType(OutlinedButton));
    await tester.pump();

    final inputTextFieldFinderEmail = find.byKey(Key('email-input'));
    final inputTextFieldFinderName = find.byKey(Key('name-input'));

    expect(tester.firstWidget<TextFormField>(inputTextFieldFinderEmail),
        isA<TextFormField>());
    expect(tester.firstWidget<TextFormField>(inputTextFieldFinderName),
        isA<TextFormField>());
  });
  testWidgets('Should hide the inputs when the submit button is clicked',
      (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();

    await tester.pumpWidget(MyApp());

    await tester.tap(find.byType(OutlinedButton));
    await tester.pump();

    final inputTextFieldFinderEmail = find.byKey(Key('email-input'));
    final inputTextFieldFinderName = find.byKey(Key('name-input'));

    expect(tester.firstWidget<TextFormField>(inputTextFieldFinderEmail),
        isNot(TextFormField));
    expect(tester.firstWidget<TextFormField>(inputTextFieldFinderName),
        isNot(TextFormField));
  });
  testWidgets('Should update the name after SAVE button is clicked',
      (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();

    await tester.pumpWidget(MyApp());

    await tester.tap(find.byType(OutlinedButton));
    await tester.pump();

    final inputTextFieldFinderName = find.byKey(Key('name-input'));

    await tester.enterText(inputTextFieldFinderName, 'New Name');

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    final textFieldFinderName = find.byKey(Key('name-text'));
    final nameText = tester.widget<Text>(textFieldFinderName);
    expect(nameText.data, 'New Name');
  });
  testWidgets('Should update the email after SAVE button is clicked',
      (WidgetTester tester) async {
    WidgetsFlutterBinding.ensureInitialized();

    await tester.pumpWidget(MyApp());

    await tester.tap(find.byType(OutlinedButton));
    await tester.pump();

    final inputTextFieldFinderEmail = find.byKey(Key('email-input'));

    await tester.enterText(
        inputTextFieldFinderEmail, 'newemail@hackerrank.com');

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle();

    final textFieldFinderEmail = find.byKey(Key('email-text'));
    final emailText = tester.widget<Text>(textFieldFinderEmail);
    expect(emailText.data, 'newemail@hackerrank.com');
  });
}
