import 'package:flutter/material.dart';
import 'package:news/features/views/authentication/login_view.dart';
import 'package:news/features/views/home/home_view.dart';
import 'package:news/features/views/navigator_view.dart';
import 'package:news/utils/constants/navigation_constants.dart';

class NavigationRouteManager {
  NavigationRouteManager._init();

  static NavigationRouteManager? _instance;

  static NavigationRouteManager get instance {
    _instance ??= NavigationRouteManager._init();
    return _instance!;
  }

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstant.home:
        return _navigationDefault(HomeView(), args);
      case NavigationConstant.navigator:
        return _navigationDefault(NavigatorView(), args);
      case NavigationConstant.login:
        return _navigationDefault(LoginView(), args);
      default:
        return _navigationDefault(LoginView(), args);
    }
  }

  MaterialPageRoute _navigationDefault(Widget page, RouteSettings args) {
    return MaterialPageRoute(
      builder: (context) => page,
      settings: args,
    );
  }
}
