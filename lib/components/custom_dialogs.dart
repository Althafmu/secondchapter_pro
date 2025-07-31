import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showCustomCheckDialog({
  required String titleText,
  required String subText,
  required VoidCallback onTapCheck,
}) {
  Get.dialog( // Using GetX for contextless dialogs[2]
    AlertDialog(
      title: Text(titleText),
      content: Text(subText),
      actions: [
        TextButton(onPressed: onTapCheck, child: const Text('OK')),
      ],
    ),
  );
}

// Similarly for custom_clear_dialog and custom_text_dialog (extend as needed)
