// lib/app/features/home/home_controller.dart
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class HomeController extends GetxController {

  // --- Dialogs ---
  void showCustomCheckDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('Check Dialog'),
        content: const Text('This is a custom check dialog.'),
        actions: [
          TextButton(onPressed: () => Get.back(), child: const Text('Cancel')),
          TextButton(onPressed: () => Get.back(), child: const Text('OK')),
        ],
      ),
    );
  }

  void showCustomClearDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('Clear Dialog'),
        content: const Text('This dialog has been cleared.'),
        actions: [
          TextButton(onPressed: () => Get.back(), child: const Text('Close')),
        ],
      ),
    );
  }

  // --- Toasts ---
  void showCenterToast() {
    Get.snackbar(
      'Center Toast',
      'This is a message.',
      snackPosition: SnackPosition.TOP,
      backgroundColor: Colors.blueGrey,
      colorText: Colors.white,
    );
  }

  void showBottomToast() {
    Get.snackbar(
      'Bottom Toast',
      'This is another message.',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black87,
      colorText: Colors.white,
    );
  }
  
  // Placeholder functions for text fields
  void openCustomTextField() => Get.snackbar('Navigation', 'Opening Custom Text Field page...');
  void openPhoneTextField() => Get.snackbar('Navigation', 'Opening Phone Number Text Field page...');
  void openVerificationCodeField() => Get.snackbar('Navigation', 'Opening Verification Code Text Field page...');
}

