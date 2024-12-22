import 'package:flutter/material.dart';

class CustomColorScheme {
  static ColorScheme colorSchemaLight = const ColorScheme.light().copyWith(
    primary: Colors.blue,
    secondary: Colors.purple,
  );

  static ColorScheme colorSchemaDark = const ColorScheme.dark().copyWith(
    primary: Colors.green,
    secondary: Colors.pink,
  );
}
