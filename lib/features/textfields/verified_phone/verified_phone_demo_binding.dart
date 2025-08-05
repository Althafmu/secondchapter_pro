import 'package:get/get.dart';
import 'verified_phone_demo_controller.dart';

class VerifiedPhoneDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifiedPhoneDemoController>(() => VerifiedPhoneDemoController());
  }
}