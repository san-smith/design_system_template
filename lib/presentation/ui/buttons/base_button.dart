import 'package:design_system_template/presentation/ui/themes/theme.dart';
import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, outlined, error }

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.type,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  final ButtonType type;
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: _getStyleByType(context),
      onPressed: onPressed,
      child: child,
    );
  }

  ButtonStyle _getStyleByType(BuildContext context) {
    switch (type) {
      case ButtonType.primary:
        return getButtonStyleType(context).primary;
      case ButtonType.secondary:
        return getButtonStyleType(context).secondary;
      case ButtonType.outlined:
        return getButtonStyleType(context).outlined;
      case ButtonType.error:
        return getButtonStyleType(context).error;
    }
  }
}
