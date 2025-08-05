import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_dialogs.dart';
import 'package:secondchapter_pro/routes/app_pages.dart';
import 'package:secondchapter_pro/components/custom_toast.dart';

class HomeController extends GetxController {
  // --- Dialogs ---

  void showCustomCheckDialog() {
    DialogHelper.showCheckDialog();
  }

  void showCustomClearDialog() {
    DialogHelper.showClearDialog();
  }
  void showTheCustomTextDialog() {
    DialogHelper.showCustomTextDialog(
      titleText: 'Top alert title',
      subText: 'subText = Body\nonTapCancel = ...\nonTapCheck = ...', // Using \n for new lines
      checkText: 'OK',
      cancelText: 'Cancel',
      onTapCheck: () {
        ToastHelper.showBottomToast(title: 'Success', message: 'OK button was pressed!');
      },
      onTapCancel: () {
        ToastHelper.showBottomToast(title: 'Cancelled', message: 'Cancel button was pressed.');
      },
    );
  }

  // --- Toasts ---
  void showCenterToast() {
    ToastHelper.showCenterToast(
      title: 'Center Toast',
      message: 'This is a message.',
    );
  }

  void showBottomToast() {
    ToastHelper.showBottomToast(
      title: 'Bottom Toast',
      message: 'This is another message.',
    );
  }

  // Placeholder functions for text fields
  void openCustomTextFieldPage() => Get.toNamed(Routes.PLAYGROUND_DEMO);
  void openPhoneTextFieldPage() => Get.toNamed(Routes.PHONE_ENTRY_DEMO);
  void openVerificationCodePage() => Get.toNamed(Routes.CODE_VERIFY_DEMO);
  void openVerifiedPhonePage() => Get.toNamed(Routes.VERIFIED_PHONE_DEMO);
  void openVerifiedTextPage() => Get.toNamed(Routes.VERIFIED_TEXT_DEMO);

  void openPhoneNumberVerification() {
    Get.toNamed(Routes.PHONE_VERIFICATION);
  }
  

  void openDashLinePage() {
    Get.toNamed(Routes.DASH_LINE);
  }

  void openMediaSliderPage() {
    Get.toNamed(Routes.MEDIA_FEED);
  }
  void openCustomIndicatorPage() {
  Get.toNamed(Routes.CUSTOM_INDICATOR);
}
}
