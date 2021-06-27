import 'package:design_system_template/presentation/home/label.dart';
import 'package:design_system_template/presentation/ui/buttons/base_button.dart';
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
}
