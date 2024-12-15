import 'package:flutter/material.dart';
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
          ],
        ),
      ),
    );
  }
}
