import 'package:design_system_template/presentation/ui/themes/custom_button_theme_data.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

final darkTheme = ThemeData.dark().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

const _blue = Color(0xFF0A84FF);
const _teal = Color(0xFF64D2FF);
const _yellow = Color(0xFFFFD60A);
const _green = Color(0xFF32D74B);
const _white = Colors.white;
const _secondary = Color.fromRGBO(120, 120, 128, 0.32);
const _error = Color(0xFFFF375F);
const _disabledBackground = Color(0xFF757575);
const _disabledForeground = Colors.white70;

final blueDarkTheme = CustomButtonThemeData.fromColors(
  primary: _blue,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);

final tealDarkTheme = CustomButtonThemeData.fromColors(
  primary: _teal,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);

final yellowDarkTheme = CustomButtonThemeData.fromColors(
  primary: _yellow,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);

final greenDarkTheme = CustomButtonThemeData.fromColors(
  primary: _green,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);
