import 'package:flutter/material.dart';
import 'package:news/core/extensions/context_extension.dart';
import 'package:news/core/extensions/string_extension.dart';
import 'package:news/features/widgets/alerts/custom_alert_dialog.dart';
import 'package:news/utils/helper/helper_functions.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
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
              child: Text('String extension'),
            ),
            SizedBox(height: context.responsiveHeight(100),),
            ElevatedButton(
                onPressed: () {
                  print(context.height);
                  print(context.customHeight(0.2));
                },
                child: Text('ContextExtension'))
          ],
        ),
      ),
    );
  }
}
