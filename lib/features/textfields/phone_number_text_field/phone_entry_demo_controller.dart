import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_toast.dart';

class PhoneEntryDemoController extends GetxController {
  void verifyPhone() {
    ToastHelper.showBottomToast(title: 'Verify', message: 'Verification logic would run here.');
  }
}