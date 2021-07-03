import 'package:design_system_template/presentation/ui/themes/button_style_type.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

final darkTheme = ThemeData.dark().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

const _primaryColor = Color(0xFF64D2FF);
const _errorColor = Color(0xFFFF375F);
const _secondaryColor = Color.fromRGBO(120, 120, 128, 0.32);
const _whiteColor = Colors.white;

final darkButtonStyleType = ButtonStyleType.fromStyle(
  style: baseButtonStyle,
  primary: _primaryColor,
  inverse: _whiteColor,
  secondary: _secondaryColor,
  error: _errorColor,
);
