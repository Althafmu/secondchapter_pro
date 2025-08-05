import 'package:get/get.dart';
import 'package:secondchapter_pro/features/splash/initialization_service.dart';
import '../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      // Find the service instance that was registered in main()
      final initService = Get.find<InitializationService>();
      
      // Call and await the initialization process.
      // The splash screen will remain visible during this time.
      await initService.init();
      
      // Once initialization is complete, navigate to the home screen.
      print("🚀 Navigating to home screen...");
      Get.offAllNamed(Routes.HOME);
      
    } catch (e) {
      // Handle any errors during initialization
      print("❌ An error occurred during initialization: $e");
      // Optionally, navigate to an error screen
      // Get.offAllNamed(Routes.ERROR);
    }
  }
}
