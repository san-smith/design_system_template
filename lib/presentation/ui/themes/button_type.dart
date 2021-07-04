import 'package:flutter/material.dart';

import 'custom_button_theme_data.dart';

enum ButtonType { primary, secondary, outlined, error }

extension ButtonStyleByType on ButtonStyle {
  ButtonStyle byType(ButtonType type, CustomButtonThemeData data) {
    final style = data.toMap()[type]!;
    return copyWith(
      backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? style.disabledBackgroundColor : style.backgroundColor),
      foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? style.disabledForegroundColor : style.foregroundColor),
      side: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? style.disabledSide : style.side),
    );
  }
}
