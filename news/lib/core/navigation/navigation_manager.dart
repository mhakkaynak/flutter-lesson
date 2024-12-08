import 'package:flutter/material.dart';

class NavigationManager {
  NavigationManager._init() {
    navigationKey = GlobalKey<NavigatorState>();
  }

  static NavigationManager? _instance;

  late final GlobalKey<NavigatorState> navigationKey;

  static NavigationManager get instance {
    _instance ??= NavigationManager._init();
    return _instance!;
  }

  void navigationToPage(String path, {Object? args}) {
    navigationKey.currentState?.pushNamed(path, arguments: args);
  }

  void navigationPop() {
    navigationKey.currentState?.pop();
  }

  void navigationPushReplacment(String path, {Object? args}) {
    navigationKey.currentState?.pushReplacementNamed(path, arguments: args);
  }
}
