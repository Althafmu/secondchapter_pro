import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  // Private constructor to prevent instantiation
  DialogHelper._();

  /// Shows a standard confirmation dialog
  static void showCheckDialog() {
    Get.dialog(
      AlertDialog(
        title: const Text('Check Dialog'),
        content: const Text('This is a custom check dialog.'),
        actions: [
          TextButton(
            onPressed: () => Get.back(result: false), // Return false on cancel
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Get.back(result: true), // Return true on OK
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  /// Shows a simple info dialog
  static void showClearDialog() {
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

  /// A more generic confirmation dialog for reusability
  static Future<bool?> showConfirmationDialog({
    String title = 'Are you sure?',
    String content = 'Do you want to proceed?',
    String confirmText = 'Confirm',
    String cancelText = 'Cancel',
  }) async {
    return await Get.dialog<bool>(
      AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: [
          TextButton(
            onPressed: () => Get.back(result: false),
            child: Text(cancelText),
          ),
          TextButton(
            onPressed: () => Get.back(result: true),
            child: Text(confirmText),
          ),
        ],
      ),
    );
  }

  static void showCustomTextDialog({
    required String titleText,
    String? subText,
    required VoidCallback onTapCheck,
    VoidCallback? onTapCancel,
    String checkText = 'OK',
    String cancelText = 'Cancel',
  }) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Use min size for the column
            children: [
              Text(
                titleText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 16),
              if (subText != null) ...[
                Text(
                  subText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 24),
              ],

              // Buttons Row
              Row(
                children: [
                  // Cancel Button
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade400,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Get.back(); // Close the dialog
                        onTapCancel
                            ?.call(); // Execute the cancel callback if it exists
                      },
                      child: Text(cancelText),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // OK/Check Button
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // As per screenshot
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Get.back(); // Close the dialog
                        onTapCheck(); // Execute the check callback
                      },
                      child: Text(checkText),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      // Set to false to prevent dismissing dialog by tapping outside
      barrierDismissible: false,
    );
  }
}
