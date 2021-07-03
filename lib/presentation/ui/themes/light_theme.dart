import 'package:design_system_template/presentation/ui/themes/button_style_type.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

final lightTheme = ThemeData.light().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

const _primaryColor = Color(0xFF007AFF);
const _errorColor = Color(0xFFFF3B30);
const _secondaryColor = Color.fromRGBO(0, 28, 61, 0.05);
const _whiteColor = Colors.white;

final lightButtonStyleType = ButtonStyleType.fromStyle(
  style: baseButtonStyle,
  primary: _primaryColor,
  inverse: _whiteColor,
  secondary: _secondaryColor,
  error: _errorColor,
);
