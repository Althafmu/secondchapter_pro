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
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6DD5ED), Color(0xFF2193B0)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0.0, end: 1.0),
                duration: const Duration(milliseconds: 1200),
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Padding(
                      padding: EdgeInsets.only(top: 50 * (1 - value)),
                      child: child,
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // --- THE CHANGE IS HERE ---
                    // 1. Replaced Image with a scalable Icon
                    const Icon(
                      Icons.rocket_launch, // <-- Choose any icon you like
                      size: 120,
                      color: Colors.white,
                    ),

                    // --- END OF CHANGE ---
                    const SizedBox(height: 24),

                    Text(
                      'Second Chapter Pro',
                      style: Theme.of(context).textTheme.headlineMedium
                          ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                    ),
                    const SizedBox(height: 48),

                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      strokeWidth: 2.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}