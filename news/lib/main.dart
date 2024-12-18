import 'package:flutter/material.dart';
import 'package:news/core/navigation/navigation_manager.dart';
import 'package:news/core/navigation/navigation_route_manager.dart';
import 'package:news/features/views/authentication/login_view.dart';
import 'package:news/features/views/navigator_view.dart';
import 'features/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationManager.instance.navigationKey,
      onGenerateRoute: (settings) =>
          NavigationRouteManager.instance.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
