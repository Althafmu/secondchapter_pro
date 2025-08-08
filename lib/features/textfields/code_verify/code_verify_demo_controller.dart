import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_toast.dart';

class CodeVerifyDemoController extends GetxController {
  late TextEditingController verifiedPhoneController;

  @override
  void onInit() {
    super.onInit();
    verifiedPhoneController = TextEditingController();
  }

  void verifyCode() {
    final String correctOtp = '111005';

    if (verifiedPhoneController.text.trim() == correctOtp) {
      ToastHelper.showBottomToast(
        title: 'Success!',
        message: 'Phone number has been verified.',
      );
    } else {
      ToastHelper.showBottomToast(
        title: 'Error',
        message: 'Invalid OTP. Please try again.',
      );
    }

    // In a real app, you would check the entered code.
    ToastHelper.showBottomToast(
      title: 'Verify',
      message: 'Code verification logic runs here.',
    );
  }
}
