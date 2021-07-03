import 'package:flutter/material.dart';

class ButtonStyleType {
  ButtonStyleType({
    required this.primary,
    required this.secondary,
    required this.outlined,
    required this.error,
  });

  factory ButtonStyleType.fromStyle({
    required ButtonStyle style,
    required Color primary,
    required Color inverse,
    required Color secondary,
    required Color error,
    required Color disabledBackground,
    required Color disabledForeground,
  }) {
    return ButtonStyleType(
      primary: style.copyWith(
        backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? disabledBackground : primary),
        foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? disabledForeground : inverse),
      ),
      secondary: style.copyWith(
        backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? disabledBackground : secondary),
        foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? disabledForeground : primary),
      ),
      outlined: style.copyWith(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? disabledForeground : primary),
        side: MaterialStateProperty.resolveWith((states) => BorderSide(
          color: states.contains(MaterialState.disabled) ? disabledBackground : primary,
          width: 2,
        )),
      ),
      error: style.copyWith(
        backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? disabledBackground : error),
        foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? disabledForeground : inverse),
      ),
    );
  }

  final ButtonStyle primary;
  final ButtonStyle secondary;
  final ButtonStyle outlined;
  final ButtonStyle error;
}
