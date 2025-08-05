import 'package:get/get.dart';

class InitializationService extends GetxService {
  Future<void> init() async {
    print("✅ Initialization Service Started...");
    
    // Simulate heavy work (e.g., loading config, API calls)
    await Future.delayed(const Duration(seconds: 3));
    
    print("✅ Initialization Service Finished!");
  }
}
