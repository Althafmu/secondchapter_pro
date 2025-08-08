import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_text_field.dart';
import 'package:secondchapter_pro/components/text_field_suffix_button.dart';
import 'phone_entry_demo_controller.dart';

class PhoneEntryDemoView extends GetView<PhoneEntryDemoController> {
  const PhoneEntryDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phone Number Text Field')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'This is a demo for phone number entry.\nYou can enter a phone number and verify it.\nAs this is a demo, the verification logic is simplified.',
            ),
            const SizedBox(height: 24),
            CustomTextField(
              controller: controller.phoneController,
              hintText: 'Phone Number*',
              keyboardType: TextInputType.phone,
              suffix: TextFieldSuffixButton(
                text: 'verify',
                onPressed: controller.verifyPhone,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
