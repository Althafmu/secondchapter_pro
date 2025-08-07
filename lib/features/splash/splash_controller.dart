import 'package:get/get.dart';
import 'package:secondchapter_pro/features/splash/initialization_service.dart';
import 'package:secondchapter_pro/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _initialize();
  }

  Future<void> _initialize() async {
    final initService = Get.find<InitializationService>();
    await initService.init();

    // Navigate to the home page after initialization
    Get.offAllNamed(Routes.DASHBOARD);
  }
}
