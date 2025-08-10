import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_button.dart';
import 'package:secondchapter_pro/features/indicator/indicator_controller.dart';
import '../../components/custom_indicator.dart';

class IndicatorDemoView extends GetView<IndicatorDemoController> {
  const IndicatorDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Indicator')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Use this indicator for time-consuming actions, such as waiting for API requests or uploading files.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 40),
            Obx(() {
              if (controller.isLoading.value) {
                return Text(
                  'Ends in 0:0${controller.countdownSeconds.value} seconds',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                );
              }
              return const SizedBox(height: 21); // To maintain space
            }),
            const SizedBox(height: 16),

            Obx(
              () => CustomButton(
                text: 'Click Me!!',
                onPressed: controller.isLoading.value
                    ? null
                    : controller.startLoadingProcess,
              ),
            ),
            const SizedBox(height: 60),

            Obx(() {
              if (controller.isLoading.value) {
                return const CustomIndicator();
              }
              return const SizedBox.shrink(); // Show nothing when not loading
            }),
          ],
        ),
      ),
    );
  }
}
