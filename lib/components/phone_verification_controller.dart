// lib/app/components/phone_verification_controller.dart
import 'package:get/get.dart';

class PhoneVerificationController extends GetxController {
  final phoneNumber = ''.obs;
  final isVerified = false.obs;
  final isLoading = false.obs;

  void onPhoneChanged(String value) {
    phoneNumber.value = value;
    isVerified.value = false; // Reset verification status on change
  }

  Future<void> verifyPhoneNumber() async {
    if (phoneNumber.value.length < 10) {
      Get.snackbar('Error', 'Invalid phone number');
      return;
    }
    isLoading.value = true;
    // Simulate network request
    await Future.delayed(const Duration(seconds: 2));
    isVerified.value = true;
    isLoading.value = false;
    Get.snackbar('Success', 'Phone number verified!');
  }
}