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

final lightButtonStyleType = ButtonStyleType(
  primary: baseButtonStyle.copyWith(
    backgroundColor: MaterialStateProperty.all(_primaryColor),
    foregroundColor: MaterialStateProperty.all(_whiteColor),
  ),
  secondary: baseButtonStyle.copyWith(
    backgroundColor: MaterialStateProperty.all(_secondaryColor),
    foregroundColor: MaterialStateProperty.all(_primaryColor),
  ),
  outlined: baseButtonStyle.copyWith(
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    foregroundColor: MaterialStateProperty.all(_primaryColor),
    side: MaterialStateProperty.all(BorderSide(
      color: _primaryColor,
      width: 2,
    )),
  ),
  error: baseButtonStyle.copyWith(
    foregroundColor: MaterialStateProperty.all(_whiteColor),
    backgroundColor: MaterialStateProperty.all(_errorColor),
  ),
);
