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
  }) {
    return ButtonStyleType(
      primary: style.copyWith(
        backgroundColor: MaterialStateProperty.all(primary),
        foregroundColor: MaterialStateProperty.all(inverse),
      ),
      secondary: style.copyWith(
        backgroundColor: MaterialStateProperty.all(secondary),
        foregroundColor: MaterialStateProperty.all(primary),
      ),
      outlined: style.copyWith(
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
        foregroundColor: MaterialStateProperty.all(primary),
        side: MaterialStateProperty.all(BorderSide(
          color: primary,
          width: 2,
        )),
      ),
      error: style.copyWith(
        foregroundColor: MaterialStateProperty.all(inverse),
        backgroundColor: MaterialStateProperty.all(error),
      ),
    );
  }

  final ButtonStyle primary;
  final ButtonStyle secondary;
  final ButtonStyle outlined;
  final ButtonStyle error;
}
