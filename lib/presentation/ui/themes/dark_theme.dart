import 'package:design_system_template/presentation/ui/themes/button_colors.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

final darkTheme = ThemeData.dark().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

const blueDarkColors = ButtonColors(
  primary: Color(0xFF64D2FF),
  inverse: Colors.white,
  secondary: Color.fromRGBO(120, 120, 128, 0.32),
  error: Color(0xFFFF375F),
  disabledBackground: Color(0xFF757575),
  disabledForeground: Colors.white70,
);
