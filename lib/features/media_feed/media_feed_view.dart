import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/media_post_widget.dart';
import 'media_feed_controller.dart';

class MediaFeedView extends GetView<MediaFeedController> {
  const MediaFeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome Video & Image Slider'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.mediaPosts.length,
          itemBuilder: (context, index) {
            final post = controller.mediaPosts[index];
            return MediaPostWidget(post: post);
          },
        ),
      ),
    );
  }
}