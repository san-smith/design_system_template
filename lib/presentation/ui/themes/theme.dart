import 'package:design_system_template/presentation/ui/themes/custom_button_theme.dart';
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

final blueButtonTheme = CustomButtonTheme(
  light: blueLightTheme,
  dark: blueDarkTheme,
);

final tealButtonTheme = CustomButtonTheme(
  light: tealLightTheme,
  dark: tealDarkTheme,
);

final yellowButtonTheme = CustomButtonTheme(
  light: yellowLightTheme,
  dark: yellowDarkTheme,
);

final greenButtonTheme = CustomButtonTheme(
  light: greenLightTheme,
  dark: greenDarkTheme,
);
