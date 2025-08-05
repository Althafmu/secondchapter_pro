import 'package:get/get.dart';
import 'code_verify_demo_controller.dart';

class CodeVerifyDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CodeVerifyDemoController>(() => CodeVerifyDemoController());
  }
}