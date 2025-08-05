import 'package:get/get.dart';
import 'package:secondchapter_pro/features/textfields/verified_text/verified_text_controller.dart';

class VerifiedTextDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifiedTextDemoController>(() => VerifiedTextDemoController());
  }
}