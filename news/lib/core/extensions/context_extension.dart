import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get height => size.height;
  double get width => size.width;

  double customHeight(double value) => height * value;
  double customWidth(double value) => width * value;

  double responsiveHeight(double value) => (height * value) / 844;
  double responsiveWidth(double value) => (width * value) / 390;
}
