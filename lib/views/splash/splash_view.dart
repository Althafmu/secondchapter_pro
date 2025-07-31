// lib/app/features/splash/splash_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The controller is initialized automatically by GetX
    // and will navigate after a delay.
    return const Scaffold(
      body: Center(
        // You can replace this with your app's logo
        child: FlutterLogo(size: 100),
      ),
    );
  }
}
