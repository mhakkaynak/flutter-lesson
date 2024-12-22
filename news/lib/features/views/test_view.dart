import 'package:flutter/material.dart';
import '../../core/notifiers/theme_notifier.dart';
import 'package:provider/provider.dart';
import '../../core/extensions/context_extension.dart';
import '../../core/extensions/string_extension.dart';
import '../widgets/alerts/custom_alert_dialog.dart';
import '../../utils/helper/helper_functions.dart';
import '../../utils/themes/custom_theme_data.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  ThemeNotifier? _themeNotifier;
  @override
  Widget build(BuildContext context) {
    _themeNotifier = Provider.of<ThemeNotifier>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                HelperFunctions.instance.showAlertDialog(context,
                    CustomAlertDialogType.success, 'Başarılı işlem yaptınız');
              },
              child: Text('Alert Test'),
            ),
            ElevatedButton(
              onPressed: () {
                String email = 'halilgmail.com';
                print(email.isValidEmail);
              },
              child: Text(
                'String extension',
                style: context.textTheme.headlineMedium,
              ),
            ),
            SizedBox(
              height: context.responsiveHeight(100),
            ),
            ElevatedButton(
              onPressed: () {
                print(context.height);
                print(context.customHeight(0.2));
              },
              child: Text('ContextExtension'),
            ),
            ElevatedButton(
              onPressed: () {
                _themeNotifier?.changeTheme();
                print(_themeNotifier?.isDarkTheme);
              },
              child: Text('change theme'),
            ),
          ],
        ),
      ),
    );
  }
}
