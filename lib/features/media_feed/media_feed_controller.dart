import 'package:get/get.dart';
import '../../data/models/media_post_model.dart';

class MediaFeedController extends GetxController {
  final RxList<MediaPost> mediaPosts = <MediaPost>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchMediaPosts();
  }

  void fetchMediaPosts() {
    // In a real app, you'd fetch this from an API.
    // We are using mock data based on the screenshots.
    // TODO: Replace with your actual asset paths and URLs.
    final mockPosts = [
      MediaPost(
        id: 'post1',
        description:
            'A screen made to be used like Instagram or feed features.',
        mediaItems: [
          MediaItem(
            url:
                'https://picsum.photos/400/400?random=1', // Replace with a real image URL
            type: MediaType.image,
          ),
        ],
      ),
      MediaPost(
        id: 'post2',
        description:
            'If there is only one image or video, infinite scroll is not enabled. Of course, you can also disable it for multiple items if you want.',
        mediaItems: [
          // IMPORTANT: Add a video to your assets/videos folder first
          MediaItem(url: 'assets/videos/vid1.webm', type: MediaType.video),
        ],
      ),
      MediaPost(
        id: 'post3',
        description:
            'With swipe gestures, when you move to the next slide, the previous video automatically stops.',
        mediaItems: [
          // IMPORTANT: Add another video to your assets/videos folder
          MediaItem(url: 'assets/videos/vid2.mp4', type: MediaType.video),
          MediaItem(
            url:
                'https://placehold.co/1080x1920/e74c3c/ffffff.png?text=Image+2',
            type: MediaType.image,
          ),
          MediaItem(
            url:
                'https://placehold.co/1080x1920/3498db/ffffff.png?text=Image+3',
            type: MediaType.image,
          ),
        ],
      ),
    ];

    mediaPosts.assignAll(mockPosts);
  }
}
