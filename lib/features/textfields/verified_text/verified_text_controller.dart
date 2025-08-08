import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifiedTextDemoController extends GetxController {
  late TextEditingController verifiedEmailController;
  final Rx<String?> topTitle = Rx(null);
  final RxBool placeholderIsStar = false.obs;
  final String baseEmail = 'ppap@naver.com';

  @override
  void onInit() {
    super.onInit();
    // Pre-fill with a sample email
    verifiedEmailController = TextEditingController(text: baseEmail);
  }

  @override
  void onClose() {
    verifiedEmailController.dispose();
    super.onClose();
  }

  void toggleTopTitle() =>
      topTitle.value = topTitle.value == null ? 'verified email address' : null;
  void togglePlaceholderIsStar() {
    placeholderIsStar.toggle();
    if (placeholderIsStar.value) {
      verifiedEmailController.text =
          '${baseEmail}*'; // Append '*' if star is enabled
    } else {
      verifiedEmailController.text =
          baseEmail; // Remove '*' if star is disabled
    }
  }
}
