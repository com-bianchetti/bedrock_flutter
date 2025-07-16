import 'package:bedrock_flutter/src/style/bedrock_color_scheme.dart';
import 'package:bedrock_flutter/src/style/bedrock_typography.dart';
import 'package:flutter/material.dart';

class BedrockThemeData {
  final VisualDensity visualDensity;
  final ThemeMode themeMode;
  final BedrockColorScheme colorSchemeLight;
  final BedrockColorScheme colorSchemeDark;
  final Map<String, BedrockColorScheme>? colorSchemes;
  final double borderRadius;
  final TextTheme textTheme;

  BedrockThemeData({
    this.visualDensity = VisualDensity.standard,
    this.themeMode = ThemeMode.light,
    this.borderRadius = 8,
    this.colorSchemes,
    this.colorSchemeLight = const BedrockColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff191919),
      onPrimary: Color(0xffffffff),
      secondary: Color(0xffFCFCFC),
      onSecondary: Color(0xff191919),
      error: Color(0xffFF2F4E),
      onError: Color(0xffffffff),
      surface: Color(0xffF4F5F9),
      onSurface: Color(0xff191919),
      surfaceContainer: Color(0xffFCFCFC),
      surfaceContainerHigh: Color(0xffFAFBFF),
      surfaceContainerHighest: Color(0xffEFF0F3),
      onSurfaceVariant: Color(0xffA3A5B0),
    ),
    this.colorSchemeDark = const BedrockColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffFCFCFC),
      onPrimary: Color(0xff191919),
      secondary: Color(0xff191919),
      onSecondary: Color(0xffFCFCFC),
      error: Color(0xffFF2F4E),
      onError: Color(0xffffffff),
      surface: Color(0xff131517),
      onSurface: Color(0xffFCFCFC),
      surfaceContainer: Color(0xff1A1C20),
      surfaceContainerHigh: Color(0xff212327),
      surfaceContainerHighest: Color(0xff2D2F33),
      onSurfaceVariant: Color(0xff7F8196),
    ),
    this.textTheme = const TextTheme(
      displayLarge: BedrockTypography.displayLarge,
      displayMedium: BedrockTypography.displayMedium,
      displaySmall: BedrockTypography.displaySmall,
      headlineLarge: BedrockTypography.headlineLarge,
      headlineMedium: BedrockTypography.headlineMedium,
      headlineSmall: BedrockTypography.headlineSmall,
      titleLarge: BedrockTypography.titleLarge,
      titleMedium: BedrockTypography.titleMedium,
      titleSmall: BedrockTypography.titleSmall,
      bodyLarge: BedrockTypography.bodyLarge,
      bodyMedium: BedrockTypography.bodyMedium,
      bodySmall: BedrockTypography.bodySmall,
      labelLarge: BedrockTypography.labelLarge,
      labelMedium: BedrockTypography.labelMedium,
      labelSmall: BedrockTypography.labelSmall,
    ),
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BedrockThemeData &&
          runtimeType == other.runtimeType &&
          visualDensity == other.visualDensity &&
          themeMode == other.themeMode &&
          colorSchemeLight == other.colorSchemeLight &&
          colorSchemeDark == other.colorSchemeDark &&
          colorSchemes == other.colorSchemes &&
          borderRadius == other.borderRadius &&
          textTheme == other.textTheme;

  @override
  int get hashCode =>
      visualDensity.hashCode ^
      themeMode.hashCode ^
      colorSchemeLight.hashCode ^
      colorSchemeDark.hashCode ^
      colorSchemes.hashCode ^
      borderRadius.hashCode ^
      textTheme.hashCode;
}
