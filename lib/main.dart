import 'package:design_system_template/presentation/ui/themes/dark_theme.dart';
import 'package:flutter/material.dart';

import 'presentation/home/home_screen.dart';
import 'presentation/ui/themes/light_theme.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Design System Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
      home: HomeScreen(),
    );
  }
}
