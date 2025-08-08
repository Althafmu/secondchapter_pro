import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_button.dart';
import 'package:secondchapter_pro/components/custom_text_field.dart';
import 'package:secondchapter_pro/features/textfields/verified_text/verified_text_controller.dart';

class VerifiedTextDemoView extends GetView<VerifiedTextDemoController> {
  const VerifiedTextDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verified Text Field')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'This Screen is shown after the verification of the phone number.\n',
            ),
            Obx(
              () => CustomTextField(
                controller: controller.verifiedEmailController,
                topTitle: controller.topTitle.value,

                readOnly: true, // Make the field non-editable
                hintText: '',
              ),
            ),
            const SizedBox(height: 24),
            CustomButton(
              text: 'topTitleString',
              onPressed: controller.toggleTopTitle,
            ),
            const SizedBox(height: 12),
            CustomButton(
              text: 'placeholderIsStar: false',
              onPressed: controller.togglePlaceholderIsStar,
            ),
          ],
        ),
      ),
    );
  }
}
