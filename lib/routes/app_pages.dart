import 'package:get/get.dart';
import 'package:secondchapter_pro/views/bottom_nav/dashboard_binding.dart';
import 'package:secondchapter_pro/views/bottom_nav/dashboard_view.dart';
import 'package:secondchapter_pro/views/splash/splash_binding.dart';
import 'package:secondchapter_pro/views/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    // Add the new Dashboard page as the main page
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
