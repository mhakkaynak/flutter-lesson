import 'package:flutter/material.dart';
import '../../features/widgets/alerts/custom_alert_dialog.dart';

class HelperFunctions {
  HelperFunctions._init();

  static HelperFunctions? _instance;

  static HelperFunctions get instance {
    _instance ??= HelperFunctions._init();
    return _instance!;
  }

  void showAlertDialog(
      BuildContext context, CustomAlertDialogType type, String description,
      {VoidCallback? onTap}) {
    OverlayState overlayState = Overlay.of(context);
    OverlayEntry? overlayEntry;

    overlayEntry = OverlayEntry(builder: (context) {
      return CustomAlertDialog(
        context: context,
        type: type,
        description: description,
        onTap: () {
          onTap?.call();
          overlayEntry?.remove();
        },
      );
    });
    overlayState.insert(overlayEntry);
    Future.delayed(const Duration(seconds: 3), () {
      overlayEntry?.remove();
    });
  }
}
