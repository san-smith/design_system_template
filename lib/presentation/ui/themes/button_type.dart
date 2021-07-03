import 'package:design_system_template/presentation/ui/themes/button_colors.dart';
import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, outlined, error }

extension ButtonStyleByType on ButtonStyle {
  ButtonStyle byType(ButtonType type, ButtonColors colors) {
    switch (type) {
      case ButtonType.primary:
        return copyWith(
          backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? colors.disabledBackground : colors.primary),
          foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? colors.disabledForeground : colors.inverse),
        );
      case ButtonType.secondary:
        return copyWith(
          backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? colors.disabledBackground : colors.secondary),
          foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? colors.disabledForeground : colors.primary),
        );

      case ButtonType.outlined:
        return copyWith(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? colors.disabledForeground : colors.primary),
          side: MaterialStateProperty.resolveWith((states) => BorderSide(
                color: states.contains(MaterialState.disabled) ? colors.disabledBackground : colors.primary,
                width: 2,
              )),
        );
      case ButtonType.error:
        return copyWith(
          backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? colors.disabledBackground : colors.error),
          foregroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.disabled) ? colors.disabledForeground : colors.inverse),
        );
    }
  }
}
