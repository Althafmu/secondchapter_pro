import 'package:get/get.dart';
import 'package:secondchapter_pro/features/textfields/text_field/textfield_controller.dart';

class PlaygroundDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaygroundDemoController>(() => PlaygroundDemoController());
  }
}