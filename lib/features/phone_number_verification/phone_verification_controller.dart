import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/custom_toast.dart';

// An enum to represent the different states of our verification process
enum VerificationState {
  initial, // User is entering the phone number
  otpSent, // OTP has been "sent", user is entering the OTP
  verified, // Phone number has been successfully verified
}

class PhoneVerificationController extends GetxController {
  // --- State Variables ---
  final Rx<VerificationState> currentState = VerificationState.initial.obs;
  late TextEditingController phoneController;
  late TextEditingController otpController;
  String verifiedPhoneNumber = '';

  // In a real app, this would be sent via SMS. From your screenshot, we use a fixed code.
  final String correctOtp = '111005';

  @override
  void onInit() {
    super.onInit();
    phoneController = TextEditingController();
    otpController = TextEditingController();
  }

  // --- Actions ---

  /// Validates the phone number and requests an OTP.
  void requestOtp() {
    String phoneNumber = phoneController.text.trim();
    if (_isValidIndianPhoneNumber(phoneNumber)) {
      verifiedPhoneNumber = phoneNumber;
      currentState.value = VerificationState.otpSent;
      ToastHelper.showBottomToast(title: 'Success', message: 'OTP has been sent to $phoneNumber');
    } else {
      ToastHelper.showBottomToast(title: 'Error', message: 'Please enter a valid 10-digit Indian mobile number.');
    }
  }

  /// Validates the entered OTP.
  void confirmOtp() {
    if (otpController.text.trim() == correctOtp) {
      currentState.value = VerificationState.verified;
      ToastHelper.showBottomToast(title: 'Success!', message: 'Phone number has been verified.');
    } else {
      ToastHelper.showBottomToast(title: 'Error', message: 'Invalid OTP. Please try again.');
    }
  }

  /// Allows the user to go back and edit the phone number.
  void editPhoneNumber() {
    currentState.value = VerificationState.initial;
    otpController.clear();
  }

  // --- Private Helper ---

  /// Simple validation for Indian mobile numbers (10 digits, starts with 6-9).
  bool _isValidIndianPhoneNumber(String number) {
    if (number.length != 10) return false;
    final firstDigit = int.tryParse(number.substring(0, 1));
    if (firstDigit == null || firstDigit < 6) return false;
    return true;
  }

  @override
  void onClose() {
    phoneController.dispose();
    otpController.dispose();
    super.onClose();
  }
}