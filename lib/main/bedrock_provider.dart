import 'package:bedrock_flutter/src/style/bedrock_theme_data.dart';
import 'package:flutter/material.dart';

class BedrockTheme extends InheritedWidget {
  const BedrockTheme({
    super.key,
    required this.theme,
    required super.child,
    this.colorScheme,
  });

  final BedrockThemeData theme;

  final String? colorScheme;

  static BedrockThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BedrockTheme>()?.theme;
  }

  static BedrockThemeData of(BuildContext context) {
    final BedrockThemeData? result = maybeOf(context);
    assert(result != null, 'No BedrockTheme found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(BedrockTheme oldWidget) =>
      theme != oldWidget.theme || colorScheme != oldWidget.colorScheme;
}
