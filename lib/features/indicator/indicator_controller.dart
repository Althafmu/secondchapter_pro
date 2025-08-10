import 'dart:async';
import 'package:get/get.dart';

class IndicatorDemoController extends GetxController {
  final RxBool isLoading = false.obs;
  final RxInt countdownSeconds = 5.obs;
  Timer? _timer;

  void startLoadingProcess() {
    if (isLoading.value) return; // Prevent multiple clicks

    isLoading.value = true;
    countdownSeconds.value = 5; // Reset countdown

    // Start a periodic timer that fires every second
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (countdownSeconds.value > 0) {
        countdownSeconds.value--;
      } else {
        // When countdown finishes, stop the timer and loading state
        isLoading.value = false;
        _timer?.cancel();
      }
    });
  }

  @override
  void onClose() {
    _timer?.cancel();
    super.onClose();
  }
}