import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifiedPhoneDemoController extends GetxController {
  late TextEditingController verifiedPhoneController;
  final Rx<String?> topTitle = Rx(null);
  final RxBool placeholderIsStar = false.obs;

  final String basePhoneNumber = '01064200000';

  @override
  void onInit() {
    super.onInit();
    // Pre-fill the controller with the verified number
    verifiedPhoneController = TextEditingController(text: basePhoneNumber);
  }

  @override
  void onClose() {
    verifiedPhoneController.dispose();
    super.onClose();
  }

  void toggleTopTitle() =>
      topTitle.value = topTitle.value == null ? 'verifyed phone number' : null;
  void togglePlaceholderIsStar() {
    placeholderIsStar.toggle();
    if (placeholderIsStar.value) {
      verifiedPhoneController.text =
          '${basePhoneNumber}*'; // Append '*' if star is enabled
    } else {
      verifiedPhoneController.text =
          basePhoneNumber; // Remove '*' if star is disabled
    }
  }
}
