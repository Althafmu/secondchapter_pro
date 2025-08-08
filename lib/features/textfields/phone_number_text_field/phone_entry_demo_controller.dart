import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_toast.dart';

class PhoneEntryDemoController extends GetxController {
  late TextEditingController phoneController;

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
  }

  void verifyPhone() {
    if (_isValidIndianPhoneNumber(phoneController.text.trim())) {
      // Logic to verify the phone number
      ToastHelper.showBottomToast(
        title: 'Success',
        message: 'Phone number is valid.',
      );
    } else {
      ToastHelper.showBottomToast(
        title: 'Error',
        message: 'Please enter a valid 10-digit Indian mobile number.',
      );
    }
  }

  bool _isValidIndianPhoneNumber(String number) {
    if (number.length != 10) return false;
    final firstDigit = int.tryParse(number.substring(0, 1));
    if (firstDigit == null || firstDigit < 6) return false;
    return true;
  }
}
