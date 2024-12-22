import 'package:flutter/material.dart';
import 'core/notifiers/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'core/extensions/context_extension.dart';
import 'core/navigation/navigation_manager.dart';
import 'core/navigation/navigation_route_manager.dart';
import 'features/views/authentication/login_view.dart';
import 'features/views/navigator_view.dart';
import 'features/views/test_view.dart';
import 'utils/themes/custom_theme_data.dart';
import 'features/views/home/home_view.dart';

void main() {
  runApp(ChangeNotifierProvider<ThemeNotifier>(
    create: (context) => ThemeNotifier(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeNotifier themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      theme: context.themeDataLight,
      darkTheme: context.themeDataDark,
      themeMode: themeNotifier.isDarkTheme == null
          ? ThemeMode.system
          : themeNotifier.isDarkTheme!
              ? ThemeMode.dark
              : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      navigatorKey: NavigationManager.instance.navigationKey,
      onGenerateRoute: (settings) =>
          NavigationRouteManager.instance.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
