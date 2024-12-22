import 'package:flutter/material.dart';
import '../../features/views/authentication/login_view.dart';
import '../../features/views/home/home_view.dart';
import '../../features/views/navigator_view.dart';
import '../../features/views/test_view.dart';
import '../../utils/constants/navigation_constants.dart';

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
      case NavigationConstant.test:
        return _navigationDefault(TestView(), args);
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
