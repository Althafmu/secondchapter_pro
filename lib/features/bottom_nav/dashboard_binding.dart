import 'package:get/get.dart';
import '../home/home_controller.dart';
import 'dashboard_controller.dart';
// Import other page controllers as you create them

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    // Register the controllers for each tab
    Get.lazyPut<HomeController>(() => HomeController());
    // Example for other tabs:
    // Get.lazyPut<FlightsController>(() => FlightsController());
    // Get.lazyPut<KeyboardController>(() => KeyboardController());
  }
}
