import 'package:get/get.dart';
import 'phone_entry_demo_controller.dart';

class PhoneEntryDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneEntryDemoController>(() => PhoneEntryDemoController());
  }
}