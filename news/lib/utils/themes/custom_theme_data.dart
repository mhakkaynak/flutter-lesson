import 'package:flutter/material.dart';

import '../../core/extensions/context_extension.dart';
import 'custom_color_sheme.dart';

class CustomThemeData {
  CustomThemeData._init();

  static CustomThemeData? _instance;

  static CustomThemeData get instance {
    _instance ??= CustomThemeData._init();
    return _instance!;
  }

  ThemeData getThemeDataLight(BuildContext context) =>
      ThemeData.light().copyWith(
        colorScheme: CustomColorScheme.colorSchemaLight,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: context.responsiveFontSize(32),
          ),
        ),
      );

  ThemeData getThemeDataDark(BuildContext context) => ThemeData.dark().copyWith(
        colorScheme: CustomColorScheme.colorSchemaDark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: CustomColorScheme.colorSchemaDark.secondary,
            foregroundColor: CustomColorScheme.colorSchemaDark.onSecondary
          ),
        ),
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            fontSize: context.responsiveFontSize(32),
          ),
        ),
      );
}
