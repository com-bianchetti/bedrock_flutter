import 'package:bedrock_flutter/bedrock_flutter.dart';
import 'package:flutter/material.dart';

class TypographyDemo extends StatelessWidget {
  const TypographyDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 10),
        DisplayLg('Display'),
        Display('Display'),
        DisplaySm('Display'),
        const SizedBox(height: 40),
        HeadlineLg('Headline'),
        Headline('Headline'),
        HeadlineSm('Headline'),
        const SizedBox(height: 40),
        SubtitleLg('Title Large'),
        Subtitle('Title Medium'),
        SubtitleSm('Title Small'),
        const SizedBox(height: 40),
        TextLg('Body Large'),
        TextMd('Body Medium'),
        TextSm('Body Small'),
        const SizedBox(height: 40),
        LabelLg('Label Large'),
        Label('Label Medium'),
        LabelSm('Label Small'),
        const SizedBox(height: 100),
      ],
    );
  }
}
