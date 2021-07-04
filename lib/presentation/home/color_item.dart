import 'package:design_system_template/main.dart';
import 'package:design_system_template/presentation/ui/themes/custom_button_theme.dart';
import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  final CustomButtonTheme value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<CustomButtonTheme>(
          value: value,
          groupValue: buttonThemeNotifier.value,
          onChanged: (value) {
            if (value != null) {
              buttonThemeNotifier.value = value;
            }
          },
        ),
        SizedBox(width: 10),
        Text(title),
      ],
    );
  }
}
