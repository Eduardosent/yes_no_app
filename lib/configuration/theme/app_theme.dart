import 'package:flutter/material.dart';

List<Color> _colorTheme = [
  Colors.indigo,
  Colors.green,
  Colors.pink,
  Colors.red,
  Colors.yellow,
  Colors.brown
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorTheme.length,
            'Colors must be between 0 and ${_colorTheme.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
      //brightness: Brightness.dark,  //dark mode
    );
  }
}
