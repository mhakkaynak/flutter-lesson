import 'package:flutter/material.dart';
import 'core/extensions/context_extension.dart';
import 'core/navigation/navigation_manager.dart';
import 'core/navigation/navigation_route_manager.dart';
import 'features/views/authentication/login_view.dart';
import 'features/views/navigator_view.dart';
import 'features/views/test_view.dart';
import 'utils/themes/custom_theme_data.dart';
import 'features/views/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: context.themeDataLight,
      darkTheme: context.themeDataDark,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationManager.instance.navigationKey,
      onGenerateRoute: (settings) =>
          NavigationRouteManager.instance.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
