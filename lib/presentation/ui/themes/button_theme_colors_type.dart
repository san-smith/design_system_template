import 'package:design_system_template/presentation/ui/themes/button_colors.dart';
import 'package:design_system_template/presentation/ui/themes/theme.dart';
import 'package:flutter/material.dart';

enum ButtonThemeColorsType { blue, teal, yellow, green }

extension ButtonColorsByMode on ButtonThemeColorsType {
  ButtonColors byMode(ThemeMode mode) {
    switch (this) {
      case ButtonThemeColorsType.blue:
        return mode == ThemeMode.dark ? blueButtonColorsTheme.dark : blueButtonColorsTheme.light;
      case ButtonThemeColorsType.teal:
        return mode == ThemeMode.dark ? tealButtonColorsTheme.dark : tealButtonColorsTheme.light;
      case ButtonThemeColorsType.yellow:
        return mode == ThemeMode.dark ? yellowButtonColorsTheme.dark : yellowButtonColorsTheme.light;
      case ButtonThemeColorsType.green:
        return mode == ThemeMode.dark ? greenButtonColorsTheme.dark : greenButtonColorsTheme.light;
    }
  }
}
