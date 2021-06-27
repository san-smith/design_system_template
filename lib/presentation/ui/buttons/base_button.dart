import 'package:design_system_template/main.dart';
import 'package:flutter/material.dart';

enum ButtonType { primary, secondary, outlined, error }

enum ButtonScale { small, medium, large }

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.type,
    required this.scale,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  final ButtonType type;
  final ButtonScale scale;
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: _getStyleByScale(_getStyleByType()),
      onPressed: onPressed,
      child: child,
    );
  }

  ButtonStyle _getStyleByType() {
    switch (type) {
      case ButtonType.primary:
        return buttonStyleType.primary;
      case ButtonType.secondary:
        return buttonStyleType.secondary;
      case ButtonType.outlined:
        return buttonStyleType.outlined;
      case ButtonType.error:
        return buttonStyleType.error;
    }
  }

  ButtonStyle _getStyleByScale(ButtonStyle style) {
    switch (scale) {
      case ButtonScale.small:
        return style.copyWith(minimumSize: MaterialStateProperty.all(const Size(75, 30)));
      case ButtonScale.medium:
        return style.copyWith(minimumSize: MaterialStateProperty.all(const Size(78, 36)));
      case ButtonScale.large:
        return style.copyWith(
          minimumSize: MaterialStateProperty.all(const Size(88, 44)),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 20)),
        );
    }
  }
}