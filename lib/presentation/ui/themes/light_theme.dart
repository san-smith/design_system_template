import 'package:design_system_template/presentation/ui/themes/button_colors.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

final lightTheme = ThemeData.light().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

const blueLightColors = ButtonColors(
  primary: Color(0xFF1BA1E2),
  inverse: Colors.white,
  secondary: Color.fromRGBO(0, 28, 61, 0.05),
  error: Color(0xFFFF3B30),
  disabledBackground: Color(0xFF979592),
  disabledForeground: Color(0xFFD1D1D6),
);

const tealLightColors = ButtonColors(
  primary: Color(0xFF00ABA9),
  inverse: Colors.white,
  secondary: Color.fromRGBO(0, 28, 61, 0.05),
  error: Color(0xFFFF3B30),
  disabledBackground: Color(0xFF979592),
  disabledForeground: Color(0xFFD1D1D6),
);

const yellowLightColors = ButtonColors(
  primary: Color(0xFFE3C800),
  inverse: Colors.white,
  secondary: Color.fromRGBO(0, 28, 61, 0.05),
  error: Color(0xFFFF3B30),
  disabledBackground: Color(0xFF979592),
  disabledForeground: Color(0xFFD1D1D6),
);

const greenLightColors = ButtonColors(
  primary: Color(0xFF60A917),
  inverse: Colors.white,
  secondary: Color.fromRGBO(0, 28, 61, 0.05),
  error: Color(0xFFFF3B30),
  disabledBackground: Color(0xFF979592),
  disabledForeground: Color(0xFFD1D1D6),
);
