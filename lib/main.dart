// lib/main.dart (Corrected)
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/routes/app_pages.dart';
import 'package:secondchapter_pro/features/splash/initialization_service.dart';
import 'package:secondchapter_pro/utils/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => InitializationService());

  runApp(
    GetMaterialApp(
      title: "Reusable Components App",
      initialRoute: AppPages.INITIAL,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode
          .system, 
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    ),
  );
}
