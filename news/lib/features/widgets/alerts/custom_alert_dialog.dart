import 'package:flutter/material.dart';

class CustomAlertDialog extends Stack {
  CustomAlertDialog({
    super.key,
    VoidCallback? onTap,
    required BuildContext context,
    required CustomAlertDialogType type,
    required String description,
  }) : super(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: onTap,
                child: Container(
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.08,
              left: MediaQuery.of(context).size.width * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Material(
                color: Colors.transparent,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                      color: type.color,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.info,
                        size: 32,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            type.title,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Text(description),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
}

enum CustomAlertDialogType {
  warning,
  success,
  error;

  Color get color {
    switch (this) {
      case warning:
        return Colors.yellow;
      case success:
        return Colors.green;
      case error:
        return Colors.red;
      default:
        return Colors.white;
    }
  }

  String get title {
    switch (this) {
      case warning:
        return 'Uyarı';
      case success:
        return 'Başarılı';
      case error:
        return 'Hata';
      default:
        return '';
    }
  }
}
