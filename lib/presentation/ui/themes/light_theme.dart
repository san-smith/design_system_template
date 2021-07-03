import 'package:design_system_template/presentation/ui/themes/button_style_type.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

final lightTheme = ThemeData.light().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

final lightButtonStyleType = ButtonStyleType.fromStyle(
  style: baseButtonStyle,
  primary: Color(0xFF007AFF),
  inverse: Colors.white,
  secondary: Color.fromRGBO(0, 28, 61, 0.05),
  error: Color(0xFFFF3B30),
  disabledBackground: Color(0xFF979592),
  disabledForeground: Color(0xFFD1D1D6),
);
