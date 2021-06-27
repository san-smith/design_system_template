import 'package:flutter/material.dart';

class ButtonStyleType {
  ButtonStyleType({
    required this.primary,
    required this.secondary,
    required this.outlined,
    required this.error,
  });

  final ButtonStyle primary;
  final ButtonStyle secondary;
  final ButtonStyle outlined;
  final ButtonStyle error;
}
