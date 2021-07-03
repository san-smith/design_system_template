import 'package:design_system_template/presentation/ui/themes/button_colors_theme.dart';
import 'package:design_system_template/presentation/ui/themes/dark_theme.dart';
import 'package:design_system_template/presentation/ui/themes/light_theme.dart';
import 'package:flutter/material.dart';

final baseButtonStyle = TextButton.styleFrom(
  minimumSize: const Size(92, 48),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.2,
  ),
);

final blueButtonColorsTheme = ButtonColorsTheme(light: blueLightColors, dark: blueDarkColors);
final tealButtonColorsTheme = ButtonColorsTheme(light: tealLightColors, dark: tealDarkColors);
final yellowButtonColorsTheme = ButtonColorsTheme(light: yellowLightColors, dark: yellowDarkColors);
final greenButtonColorsTheme = ButtonColorsTheme(light: greenLightColors, dark: greenDarkColors);
