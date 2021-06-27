import 'package:design_system_template/presentation/ui/themes/button_type.dart';
import 'package:flutter/material.dart';

import 'theme.dart';

final darkTheme = ThemeData.dark().copyWith(
  textButtonTheme: TextButtonThemeData(style: baseButtonTheme),
);

const _primaryColor = Color(0xFF0A84FF);
const _errorColor = Color(0xFFFF453A);
const _secondaryColor = Color.fromRGBO(0, 28, 61, 0.05);
const _whiteColor = Colors.white;

final darkButtonStyleType = ButtonPropType(
  primary: baseButtonTheme.copyWith(
    backgroundColor: MaterialStateProperty.all(_primaryColor),
    foregroundColor: MaterialStateProperty.all(_whiteColor),
  ),
  secondary: baseButtonTheme.copyWith(
    backgroundColor: MaterialStateProperty.all(_secondaryColor),
    foregroundColor: MaterialStateProperty.all(_primaryColor),
  ),
  outlined: baseButtonTheme.copyWith(
    backgroundColor: MaterialStateProperty.all(Colors.transparent),
    foregroundColor: MaterialStateProperty.all(_primaryColor),
    side: MaterialStateProperty.all(BorderSide(
      color: _primaryColor,
      width: 2,
    )),
  ),
  error: baseButtonTheme.copyWith(
    foregroundColor: MaterialStateProperty.all(_whiteColor),
    backgroundColor: MaterialStateProperty.all(_errorColor),
  ),
);
