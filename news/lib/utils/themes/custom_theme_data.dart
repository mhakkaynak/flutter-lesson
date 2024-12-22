import 'package:flutter/material.dart';
import 'package:news/core/extensions/context_extension.dart';
import 'package:news/features/views/test_view.dart';
import 'package:news/utils/themes/custom_color_sheme.dart';

class CustomThemeData {
  CustomThemeData._init();

  static CustomThemeData? _instance;

  static CustomThemeData get instance {
    _instance ??= CustomThemeData._init();
    return _instance!;
  }

  ThemeData customTheme(BuildContext context) => ThemeData.light().copyWith(
        colorScheme: CustomColorScheme.customColorSchema,
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
            fontSize: context.responsiveFontSize(32)
          ),
        ),
      );
}
