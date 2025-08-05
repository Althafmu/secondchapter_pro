import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_text_field.dart';
import 'package:secondchapter_pro/components/text_field_suffix_button.dart';
import 'verified_phone_demo_controller.dart';

class VerifiedPhoneDemoView extends GetView<VerifiedPhoneDemoController> {
  const VerifiedPhoneDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phone Number Verified')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomTextField(
          controller: controller.verifiedPhoneController,
          topTitle: '전화번호',
          readOnly: true, // Make the field non-editable
          hintText: '',
          // The button is disabled because onPressed is null
          suffix: const TextFieldSuffixButton(text: '인증완료'),
        ),
      ),
    );
  }
}