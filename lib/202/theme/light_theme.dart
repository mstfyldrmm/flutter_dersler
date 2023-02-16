import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  ThemeData theme = ThemeData(
      scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
      appBarTheme: AppBarTheme(
          color: Colors.deepPurple,
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20)))),
      checkboxTheme:
          CheckboxThemeData(fillColor: MaterialStateProperty.all(Colors.red)),
      colorScheme: ColorScheme.light(
          background: Colors.cyan,
          brightness: Brightness.light,
          onSecondary: Colors.red),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
              onPrimary: Colors.purple, onSecondary: _LightColor()._deepSea)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.cyan, focusColor: Colors.red),
      textTheme: ThemeData.light().textTheme.copyWith(
          subtitle1:
              TextStyle(color: Colors.black26, fontStyle: FontStyle.italic)));
}

class _LightColor {
  final Color _textColor = Colors.black45;
  final Color _deepSea = Color.fromARGB(22, 119, 97, 1);
}
