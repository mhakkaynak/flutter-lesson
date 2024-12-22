import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool? _isDarkTheme;
  bool? get isDarkTheme => _isDarkTheme;
  void changeTheme() {
    _isDarkTheme ??= false;
    _isDarkTheme = !_isDarkTheme!;
    notifyListeners();
  }
}
