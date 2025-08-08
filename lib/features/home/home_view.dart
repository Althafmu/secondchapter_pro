import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // IMPORTANT: The Scaffold and AppBar are removed from here.
    // This widget is now just the content that will be displayed
    // inside the DashboardView.
    return Scaffold(
      appBar: AppBar(
        title: const Text('GlobalTitleCenterAppbar'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          _buildSectionHeader('Dialog'),
          _buildListItem(
            'custom_check_dialog',
            onTap: controller.showCustomCheckDialog,
          ),
          _buildListItem(
            'custom_clear_dialog',
            onTap: controller.showCustomClearDialog,
          ),
          _buildListItem(
            'custom_text_dialog',
            onTap: controller.showTheCustomTextDialog,
          ),

          _buildSectionHeader('Toast Message'),
          _buildListItem(
            'show_Center_Toast',
            onTap: controller.showCenterToast,
          ),
          _buildListItem(
            'show_Bottom_Toast',
            onTap: controller.showBottomToast,
          ),

          _buildSectionHeader('Text Field'),
          _buildListItem(
            'Custom Text Field',
            onTap: controller.openCustomTextFieldPage,
          ),
          _buildListItem(
            'Phone Number Text Field',
            onTap: controller.openPhoneTextFieldPage,
          ),
          _buildListItem(
            'Verification Code Text Field',
            onTap: controller.openVerificationCodePage,
          ),
          _buildListItem(
            'Phone Number Verified (Fake) Text Field',
            onTap: controller.openVerifiedPhonePage,
          ),
          _buildListItem(
            'Verified Text (Fake) Field',
            onTap: controller.openVerifiedTextPage,
          ),

          // --- NEW SECTIONS FROM IMAGE ---
          _buildSectionHeader('Phone Number Verification'),
          _buildListItem(
            'Phone Number Verification Module',
            onTap: controller.openPhoneNumberVerification,
          ),
          _buildListItem(
            'Phone Number Edit Module',
            onTap: controller.openPhoneNumberVerification,
          ),

          _buildSectionHeader('Custom ETC'),
          _buildListItem(
            'Custom Dash Line',
            onTap: controller.openDashLinePage,
          ),
          _buildListItem(
            'Custom Indicator',
            onTap: controller.openCustomIndicatorPage,
          ),
          _buildListItem('Doh!! Slider', onTap: controller.openMediaSliderPage),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      color: Colors.grey[200],
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }

  Widget _buildListItem(String title, {VoidCallback? onTap}) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      trailing: const Icon(Icons.arrow_forward_ios, size: 14),
    );
  }
}
