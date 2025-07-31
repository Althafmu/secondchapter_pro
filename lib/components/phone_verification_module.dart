
// lib/app/components/phone_verification_module.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_button.dart';
import 'phone_verification_controller.dart';

class PhoneVerificationModule extends StatelessWidget {
  const PhoneVerificationModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Each instance of this widget gets its own controller
    final controller = Get.put(PhoneVerificationController());

    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            onChanged: controller.onPhoneChanged,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              suffixIcon: controller.isVerified.value
                  ? const Icon(Icons.check_circle, color: Colors.green)
                  : null,
            ),
          ),
          const SizedBox(height: 16),
          controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : CustomButton(
                  text: controller.isVerified.value ? 'Verified' : 'Verify',
                  onPressed: controller.isVerified.value
                      ? () {}
                      : controller.verifyPhoneNumber,
                  color: controller.isVerified.value ? Colors.green : null,
                ),
        ],
      ),
    );
  }
}
