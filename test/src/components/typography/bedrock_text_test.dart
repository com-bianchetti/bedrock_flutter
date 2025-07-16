import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bedrock_flutter/src/components/typography/bedrock_text.dart';

void main() {
  group('Bedrock Text Widgets', () {
    const testString = 'Hello, Bedrock!';
    const customStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 42);

    final widgets = <String, Widget Function({TextStyle? style})>{
      'TextMd': ({style}) => TextMd(testString, style: style),
      'TextSm': ({style}) => TextSm(testString, style: style),
      'TextLg': ({style}) => TextLg(testString, style: style),
      'DisplayLg': ({style}) => DisplayLg(testString, style: style),
      'Display': ({style}) => Display(testString, style: style),
      'DisplaySm': ({style}) => DisplaySm(testString, style: style),
      'HeadlineLg': ({style}) => HeadlineLg(testString, style: style),
      'Headline': ({style}) => Headline(testString, style: style),
      'HeadlineSm': ({style}) => HeadlineSm(testString, style: style),
      'SubtitleLg': ({style}) => SubtitleLg(testString, style: style),
      'Subtitle': ({style}) => Subtitle(testString, style: style),
      'SubtitleSm': ({style}) => SubtitleSm(testString, style: style),
      'LabelLg': ({style}) => LabelLg(testString, style: style),
      'Label': ({style}) => Label(testString, style: style),
      'LabelSm': ({style}) => LabelSm(testString, style: style),
    };

    widgets.forEach((name, builder) {
      testWidgets('$name renders text', (tester) async {
        await tester.pumpWidget(
          MaterialApp(home: Scaffold(body: builder())),
        );
        expect(find.text(testString), findsOneWidget);
      });

      testWidgets('$name merges custom style', (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(body: builder(style: customStyle)),
          ),
        );
        final textWidget = tester.widget<Text>(find.text(testString));
        expect(textWidget.style?.fontWeight, FontWeight.bold);
        expect(textWidget.style?.fontSize, 42);
      });
    });

    // Golden tests
    widgets.forEach((name, builder) {
      testWidgets('$name golden - default style', (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              backgroundColor: Colors.white,
              body: Center(child: builder()),
            ),
          ),
        );
        await expectLater(
          find.byType(Scaffold),
          matchesGoldenFile('goldens/${name.toLowerCase()}_default.png'),
        );
      });

      testWidgets('$name golden - custom style', (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              backgroundColor: Colors.white,
              body: Center(child: builder(style: customStyle)),
            ),
          ),
        );
        await expectLater(
          find.byType(Scaffold),
          matchesGoldenFile('goldens/${name.toLowerCase()}_custom.png'),
        );
      });
    });
  });
}
