import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_button.dart';
import 'package:secondchapter_pro/components/custom_text_field.dart';
import 'package:secondchapter_pro/features/textfields/text_field/textfield_controller.dart';


class PlaygroundDemoView extends GetView<PlaygroundDemoController> {
  const PlaygroundDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Text Field')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
             Obx(() => CustomTextField(
                  controller: controller.playgroundController,
                  topTitle: controller.topTitle.value,
                  isPassword: controller.isPw.value,
                  hintText: 'Custom${controller.placeholderIsStar.value ? '*' : ''}TextField',
                  errorText: controller.errorText.value,
              )),
            const SizedBox(height: 24),
            CustomButton(text: 'topTitleString', onPressed: controller.toggleTopTitle),
            const SizedBox(height: 12),
            CustomButton(text: 'isPw: false', onPressed: controller.toggleIsPw),
            const SizedBox(height: 12),
            CustomButton(text: 'placeholderIsStar: false', onPressed: controller.togglePlaceholderIsStar),
            const SizedBox(height: 12),
            CustomButton(text: 'textFieldErrString', onPressed: () {}), // Not implemented in screenshot
             const SizedBox(height: 12),
            CustomButton(text: 'isShowFailErrString', onPressed: controller.toggleErrorString),
          ],
        ),
      ),
    );
  }
}