import 'package:flutter/material.dart';

import 'custom_button_theme_data.dart';
import 'theme.dart';

final lightTheme = ThemeData.light().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonStyle),
);

const _blue = Color(0xFF1BA1E2);
const _teal = Color(0xFF00ABA9);
const _yellow = Color(0xFFE3C800);
const _green = Color(0xFF60A917);
const _secondary = Color.fromRGBO(0, 28, 61, 0.05);
const _white = Colors.white;
const _disabledBackground = Color(0xFF979592);
const _disabledForeground = Color(0xFFD1D1D6);
const _error = Color(0xFFFF3B30);

final blueLightTheme = CustomButtonThemeData.fromColors(
  primary: _blue,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);

final tealLightTheme = CustomButtonThemeData.fromColors(
  primary: _teal,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);

final yellowLightTheme = CustomButtonThemeData.fromColors(
  primary: _yellow,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);

final greenLightTheme = CustomButtonThemeData.fromColors(
  primary: _green,
  inverse: _white,
  secondary: _secondary,
  error: _error,
  disabledBackground: _disabledBackground,
  disabledForeground: _disabledForeground,
);
