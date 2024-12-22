import 'package:flutter/material.dart';

class CustomColorScheme {
  static Color primary = Colors.blue;
  static Color secondary = Colors.purple;

  static ColorScheme customColorSchema = const ColorScheme.light().copyWith(
    primary: primary,
    secondary: secondary,
  );
}
