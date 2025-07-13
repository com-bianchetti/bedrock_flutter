import 'package:flutter/material.dart';

class BedrockColorScheme extends ColorScheme {
  const BedrockColorScheme({
    super.brightness = Brightness.light,
    super.primary = const Color(0xff191919),
    super.onPrimary = const Color(0xffffffff),
    super.secondary = const Color(0xffFCFCFC),
    super.onSecondary = const Color(0xff191919),
    super.error = const Color(0xffFF2F4E),
    super.onError = const Color(0xffffffff),
    super.surface = const Color(0xffF4F5F9),
    super.onSurface = const Color(0xff191919),
    super.surfaceContainer = const Color(0xffFCFCFC),
    super.surfaceContainerHigh = const Color(0xffFAFBFF),
    super.surfaceContainerHighest = const Color(0xffEFF0F3),
  });
}
