import 'package:get/get.dart';
import 'package:secondchapter_pro/components/custom_toast.dart';

class CodeVerifyDemoController extends GetxController {
  void verifyCode() {
    // In a real app, you would check the entered code.
    ToastHelper.showBottomToast(title: 'Verify', message: 'Code verification logic runs here.');
  }
}