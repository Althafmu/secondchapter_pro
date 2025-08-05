import 'package:get/get.dart';
import 'dash_line_controller.dart';

class DashLineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashLineController>(() => DashLineController());
  }
}
