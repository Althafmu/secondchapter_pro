import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/features/splash/splash_controller.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
    );
  }
}
