import 'package:get/get.dart';
import 'package:secondchapter_pro/features/indicator/indicator_controller.dart';

class IndicatorDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndicatorDemoController>(() => IndicatorDemoController());
  }
}