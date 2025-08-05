import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import '../../components/text_field_suffix_button.dart';
import 'phone_verification_controller.dart';

class PhoneVerificationView extends GetView<PhoneVerificationController> {
  const PhoneVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Phone Number Verification')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // This Obx widget rebuilds its child whenever the state changes
            Obx(() => _buildUiForState(controller.currentState.value)),
          ],
        ),
      ),
    );
  }

  // Helper method to build UI based on the current state
  Widget _buildUiForState(VerificationState state) {
    return Column(
      children: [
        Text(
          'This is a demo for phone number verification.\n'
          'You can enter a phone number, receive an OTP, and verify it.\nas this is a demo, the OTP is fixed as "111005".',
        ),
        // --- Phone Number Field (Visible in all states) ---
        CustomTextField(
          controller: controller.phoneController,
          hintText: 'Enter your 10-digit number',
          topTitle: 'phone number',
          keyboardType: TextInputType.phone,
          readOnly:
              state !=
              VerificationState.initial, // Read-only unless in initial state
          suffix: _buildSuffixForState(state),
        ),
        const SizedBox(height: 24),

        // --- OTP Field (Only visible when OTP is sent) ---
        if (state == VerificationState.otpSent) ...[
          CustomTextField(
            controller: controller.otpController,
            hintText: 'Enter 6-digit OTP',
            topTitle: 'Verification Code',
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 24),
          CustomButton(text: 'Confirm OTP', onPressed: controller.confirmOtp),
        ],

        // --- Verified Message ---
        if (state == VerificationState.verified)
          const Text(
            'Your phone number has been successfully verified!',
            style: TextStyle(
              color: Colors.green,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
      ],
    );
  }

  // Helper method to determine the suffix button based on state
  Widget? _buildSuffixForState(VerificationState state) {
    switch (state) {
      case VerificationState.initial:
        return TextFieldSuffixButton(
          text: 'Verify',
          onPressed: controller.requestOtp,
        );
      case VerificationState.otpSent:
        return TextFieldSuffixButton(
          text: 'Edit',
          onPressed: controller.editPhoneNumber,
        );
      case VerificationState.verified:
        return const TextFieldSuffixButton(text: 'Verified'); // Disabled
    }
  }
}
