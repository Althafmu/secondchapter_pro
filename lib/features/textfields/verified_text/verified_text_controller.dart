import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifiedTextDemoController extends GetxController {
  late TextEditingController verifiedEmailController;

  @override
  void onInit() {
    super.onInit();
    // Pre-fill with a sample email
    verifiedEmailController = TextEditingController(text: 'ppap@naver.com');
  }

  @override
  void onClose() {
    verifiedEmailController.dispose();
    super.onClose();
  }
}