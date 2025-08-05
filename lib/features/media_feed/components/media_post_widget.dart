import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../data/models/media_post_model.dart';
import 'video_item_widget.dart';

class MediaPostWidget extends StatefulWidget {
  final MediaPost post;

  const MediaPostWidget({super.key, required this.post});

  @override
  State<MediaPostWidget> createState() => _MediaPostWidgetState();
}

class _MediaPostWidgetState extends State<MediaPostWidget> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaItems = widget.post.mediaItems;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Description Text
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            child: Text(
              widget.post.description,
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 8),

          // Media Slider
          AspectRatio(
            aspectRatio: 3 / 4, // Typical portrait aspect ratio
            child: PageView.builder(
              controller: _pageController,
              itemCount: mediaItems.length,
              itemBuilder: (context, index) {
                final item = mediaItems[index];
                if (item.type == MediaType.video) {
                  return VideoItemWidget(videoUrl: item.url);
                } else {
                  return CachedNetworkImage(
                    imageUrl: item.url,
                    fit: BoxFit.cover,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  );
                }
              },
            ),
          ),
          const SizedBox(height: 8),

          // Page Indicator
          if (mediaItems.length > 1)
            Center(
              child: SmoothPageIndicator(
                controller: _pageController,
                count: mediaItems.length,
                effect: const WormEffect(
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                  activeDotColor: Colors.blueAccent,
                  dotColor: Colors.grey,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
