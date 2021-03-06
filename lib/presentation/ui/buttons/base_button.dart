import 'package:design_system_template/main.dart';
import 'package:design_system_template/presentation/ui/themes/button_scale.dart';
import 'package:design_system_template/presentation/ui/themes/button_type.dart';
import 'package:design_system_template/presentation/ui/themes/theme.dart';
import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({
    Key? key,
    required this.type,
    required this.scale,
    this.onPressed,
    this.style,
    required this.child,
  }) : super(key: key);

  final ButtonType type;
  final ButtonScale scale;
  final ButtonStyle? style;
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final defaultStyle = baseButtonStyle.byType(type, buttonTheme).byScale(scale);
    return TextButton(
      style: style != null ? style!.merge(defaultStyle) : defaultStyle,
      onPressed: onPressed,
      child: child,
    );
  }
}
