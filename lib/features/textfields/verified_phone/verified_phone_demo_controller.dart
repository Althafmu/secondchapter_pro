import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifiedPhoneDemoController extends GetxController {
  late TextEditingController verifiedPhoneController;

  @override
  void onInit() {
    super.onInit();
    // Pre-fill the controller with the verified number
    verifiedPhoneController = TextEditingController(text: '01064200000');
  }

  @override
  void onClose() {
    verifiedPhoneController.dispose();
    super.onClose();
  }
}