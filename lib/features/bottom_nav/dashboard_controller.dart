import 'package:get/get.dart';

class DashboardController extends GetxController {
  // .obs makes this variable reactive
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
