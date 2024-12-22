import 'package:flutter/material.dart';
import 'package:news/utils/themes/custom_theme_data.dart';

extension ContextExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;

  ThemeData get themeData => CustomThemeData.instance.customTheme(this);
  TextTheme get textTheme => themeData.textTheme;

  double customHeight(double value) => height * value;
  double customWidth(double value) => width * value;

  double responsiveHeight(double value) => (height * value) / 844;
  double responsiveWidth(double value) => (width * value) / 390;

  double responsiveFontSize(double fontSize) => (fontSize / 844.0) * height;
}
