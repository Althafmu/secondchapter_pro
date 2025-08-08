import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlaygroundDemoController extends GetxController {
  late TextEditingController playgroundController;
  final Rx<String?> topTitle = Rx(null);
  final RxBool isPw = false.obs;
  final RxBool placeholderIsStar = false.obs;
  final Rx<String?> errorText = Rx(null);

  @override
  void onInit() {
    super.onInit();
    playgroundController = TextEditingController(text: 'this is a sample text');
  }

  void toggleTopTitle() => topTitle.value = topTitle.value == null ? 'topTitleString' : null;
  void toggleIsPw() => isPw.toggle();
  void togglePlaceholderIsStar() => placeholderIsStar.toggle();
  void toggleErrorString() => errorText.value = errorText.value == null ? 'This is a failure error string.' : null;

  @override
  void onClose() {
    playgroundController.dispose();
    super.onClose();
  }
}