import 'package:design_system_template/main.dart';
import 'package:design_system_template/presentation/home/color_item.dart';
import 'package:design_system_template/presentation/home/label.dart';
import 'package:design_system_template/presentation/ui/buttons/base_button.dart';
import 'package:design_system_template/presentation/ui/themes/button_scale.dart';
import 'package:design_system_template/presentation/ui/themes/button_theme_colors_type.dart';
import 'package:design_system_template/presentation/ui/themes/button_type.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget get _buttonTitle => Text('button');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildGrid(),
      ),
    );
  }

  Widget _buildGrid() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _buildRow(_buildTitleRow()),
        SizedBox(height: 20),
        _buildRow(_buildPrimaryRow()),
        SizedBox(height: 20),
        _buildRow(_buildSecondaryRow()),
        SizedBox(height: 20),
        _buildRow(_buildOutlinedRow()),
        SizedBox(height: 20),
        _buildRow(_buildErrorRow()),
        SizedBox(height: 20),
        _buildRow(_buildCustomRow()),
        SizedBox(height: 20),
        _buildModeSwitcher(),
        SizedBox(height: 20),
        _buildColorSwitcher(),
      ],
    );
  }

  Widget _buildModeSwitcher() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Label('Dark mode:'),
        SizedBox(width: 10),
        Switch(
          value: themeModeNotifier.value == ThemeMode.dark,
          onChanged: (value) {
            themeModeNotifier.value = value ? ThemeMode.dark : ThemeMode.light;
          },
        ),
      ],
    );
  }

  Widget _buildColorSwitcher() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ColorItem(value: ButtonThemeColorsType.blue, title: 'Blue'),
        SizedBox(width: 20),
        ColorItem(value: ButtonThemeColorsType.teal, title: 'Teal'),
        SizedBox(width: 20),
        ColorItem(value: ButtonThemeColorsType.yellow, title: 'Yellow'),
        SizedBox(width: 20),
        ColorItem(value: ButtonThemeColorsType.green, title: 'Green'),
      ],
    );
  }

  Widget _buildRow(List<Widget> children) {
    return Row(
      children: children.map((e) => Expanded(child: Center(child: e))).toList(),
    );
  }

  List<Widget> _buildTitleRow() {
    return [
      SizedBox(),
      Label('Small'),
      Label('Medium'),
      Label('Large'),
    ];
  }

  List<Widget> _buildPrimaryRow() {
    return [
      Label('Primary'),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ];
  }

  List<Widget> _buildSecondaryRow() {
    return [
      Label('Secondary'),
      BaseButton(
        type: ButtonType.secondary,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.secondary,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.secondary,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ];
  }

  List<Widget> _buildOutlinedRow() {
    return [
      Label('Outlined'),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ];
  }

  List<Widget> _buildErrorRow() {
    return [
      Label('Error'),
      BaseButton(
        type: ButtonType.error,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.error,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
      ),
      BaseButton(
        type: ButtonType.error,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
      ),
    ];
  }

  List<Widget> _buildCustomRow() {
    return [
      Label('Custom style'),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.small,
        child: _buttonTitle,
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: Colors.green,
          primary: Colors.yellow,
        ),
      ),
      BaseButton(
        type: ButtonType.primary,
        scale: ButtonScale.medium,
        child: _buttonTitle,
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size(60, 60),
          shape: StadiumBorder(),
          elevation: 5,
        ),
      ),
      BaseButton(
        type: ButtonType.outlined,
        scale: ButtonScale.large,
        child: _buttonTitle,
        onPressed: () {},
        style: TextButton.styleFrom(
          side: BorderSide(color: Colors.green, width: 3),
          shape: StadiumBorder(),
        ),
      ),
    ];
  }
}
