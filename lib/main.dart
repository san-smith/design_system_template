import 'package:design_system_template/presentation/ui/themes/custom_button_theme.dart';
import 'package:design_system_template/presentation/ui/themes/custom_button_theme_data.dart';
import 'package:design_system_template/presentation/ui/themes/dark_theme.dart';
import 'package:design_system_template/presentation/ui/themes/theme.dart';
import 'package:flutter/material.dart';

import 'presentation/home/home_screen.dart';
import 'presentation/ui/themes/light_theme.dart';

void main() {
  runApp(Application());
}

final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(ThemeMode.light);

final ValueNotifier<CustomButtonTheme> buttonThemeNotifier = ValueNotifier(blueButtonTheme);

CustomButtonThemeData get buttonTheme => themeModeNotifier.value == ThemeMode.dark ? buttonThemeNotifier.value.dark : buttonThemeNotifier.value.light;

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeModeNotifier,
      builder: (_, mode, __) => ValueListenableBuilder(
        valueListenable: buttonThemeNotifier,
        builder: (_, colors, __) => MaterialApp(
          title: 'Flutter Design System Demo',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: mode,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
