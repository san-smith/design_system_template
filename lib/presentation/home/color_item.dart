import 'package:design_system_template/main.dart';
import 'package:design_system_template/presentation/ui/themes/button_theme_colors_type.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  final ButtonThemeColorsType value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<ButtonThemeColorsType>(
          value: value,
          groupValue: buttonColorsNotifier.value,
          onChanged: (value) {
            if (value != null) {
              buttonColorsNotifier.value = value;
            }
          },
        ),
        SizedBox(width: 10),
        Text(title),
      ],
    );
  }
}
