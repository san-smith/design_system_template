import 'package:design_system_template/presentation/ui/themes/dark_theme.dart';
import 'package:design_system_template/presentation/ui/themes/light_theme.dart';
import 'package:flutter/material.dart';

import 'button_type.dart';

final baseButtonTheme = TextButton.styleFrom(
  minimumSize: const Size(92, 48),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  ),
);

ButtonPropType<ButtonStyle> getButtonStyleType(BuildContext context) {
  return MediaQuery.of(context).platformBrightness == Brightness.dark ? darkButtonStyleType : lightButtonStyleType;
}
