import 'package:design_system_template/presentation/ui/themes/dark_theme.dart';
import 'package:flutter/material.dart';

import 'presentation/home/home_screen.dart';
import 'presentation/ui/themes/button_colors.dart';
import 'presentation/ui/themes/light_theme.dart';

void main() {
  runApp(Application());
}

final ValueNotifier<ThemeMode> themeModeNotifier = ValueNotifier(ThemeMode.light);

ButtonColors get buttonColors => themeModeNotifier.value == ThemeMode.dark ? blueDarkColors : blueLightColors;

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeModeNotifier,
      builder: (_, mode, __) => MaterialApp(
        title: 'Flutter Design System Demo',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: mode,
        home: HomeScreen(),
      ),
    );
  }
}
