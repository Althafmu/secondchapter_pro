import 'package:get/get.dart';
import 'media_feed_controller.dart';

class MediaFeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MediaFeedController>(
      () => MediaFeedController(),
    );
  }
}