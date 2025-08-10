import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_button.dart';

/// A helper class to show consistent, styled dialogs throughout the app.
class DialogHelper {
  // Private constructor to prevent instantiation.
  DialogHelper._();

  /// The base method for showing all custom dialogs. It handles the common
  /// layout, and the public methods provide the specific buttons.
  static void _showBaseDialog({
    required String title,
    String? subText,
    required List<Widget> actions,
    bool barrierDismissible = false,
  }) {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              if (subText != null) ...[
                const SizedBox(height: 16),
                Text(
                  subText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
              const SizedBox(height: 24),
              // The buttons are passed in as a list of widgets
              ...actions,
            ],
          ),
        ),
      ),
      barrierDismissible: barrierDismissible,
    );
  }

  /// Shows a dialog with a single action button (like an alert).
  /// Matches: `custom_check_dialog`
  static void showCheckDialog({
    required String title,
    String? subText,
    required VoidCallback onTapCheck,
    String checkText = 'OK',
  }) {
    _showBaseDialog(
      title: title,
      subText: subText,
      actions: [
        CustomButton(
          onPressed: () {
            Get.back();
            onTapCheck();
          },
          color: const Color(0xFF333333), // Dark grey / black
          text: 'checkText',
        ),
      ],
    );
  }

  /// Shows a dialog with two buttons, for a destructive action.
  /// Matches: `custom_clear_dialog`
  static void showClearDialog({
    required String title,
    String? subText,
    required VoidCallback onTapCheck,
    VoidCallback? onTapCancel,
    String checkText = 'OK',
    String cancelText = 'Cancel',
  }) {
    _showBaseDialog(
      title: title,
      subText: subText,
      actions: [
        Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Get.back();
                  onTapCancel?.call();
                },
                color: Colors.grey.shade400,
                text: cancelText,),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Get.back();
                  onTapCheck();
                },
                color: Colors.redAccent, // Red for "clear" or "delete"
                text: checkText,),
            ),
          ],
        )
      ],
    );
  }
  
  /// Shows a dialog with two buttons, for a standard confirmation.
  /// Matches: `custom_text_dialog`
  static void showCustomTextDialog({
    required String title,
    String? subText,
    required VoidCallback onTapCheck,
    VoidCallback? onTapCancel,
    String checkText = 'OK',
    String cancelText = 'Cancel',
  }) {
    _showBaseDialog(
      title: title,
      subText: subText,
      actions: [
        Row(
          children: [
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Get.back();
                  onTapCancel?.call();
                },
                color: Colors.grey.shade400,
                 text:'cancelText',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CustomButton(
                onPressed: () {
                  Get.back();
                  onTapCheck();
                },
                color: Colors.green, // Green for positive confirmation
                text: checkText,),
            ),
          ],
        )
      ],
    );
  }
}