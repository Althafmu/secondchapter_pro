import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_text_field.dart';
import 'package:secondchapter_pro/components/text_field_suffix_button.dart';
import 'code_verify_demo_controller.dart';

class CodeVerifyDemoView extends GetView<CodeVerifyDemoController> {
  const CodeVerifyDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Verification Code Field')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomTextField(
          hintText: 'Enter 6-digit verification code*',
          keyboardType: TextInputType.number,
          suffix: TextFieldSuffixButton(text: 'Verify', onPressed: controller.verifyCode),
        ),
      ),
    );
  }
}