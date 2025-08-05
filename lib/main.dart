// lib/main.dart (Corrected)
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/routes/app_pages.dart';
import 'package:secondchapter_pro/features/splash/initialization_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Lazily register the service. It won't be created until it's needed.
  Get.lazyPut(() => InitializationService());

  runApp(
    GetMaterialApp(
      title: "Reusable Components App",
      initialRoute: AppPages.INITIAL, // Should be '/splash'
      getPages: AppPages.routes,
    ),
  );
}
