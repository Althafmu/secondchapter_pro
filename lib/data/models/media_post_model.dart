enum MediaType { image, video }

class MediaItem {
  final String url;
  final MediaType type;

  MediaItem({required this.url, required this.type});
}

class MediaPost {
  final String id;
  final String description;
  final List<MediaItem> mediaItems;

  MediaPost({
    required this.id,
    required this.description,
    required this.mediaItems,
  });
}