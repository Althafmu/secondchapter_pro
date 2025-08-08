import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart'; // ADDED: Import the package

class VideoItemWidget extends StatefulWidget {
  final String videoUrl;
  final bool isAsset;

  VideoItemWidget({super.key, required this.videoUrl})
      : isAsset = videoUrl.startsWith('assets/videos/');

  @override
  State<VideoItemWidget> createState() => _VideoItemWidgetState();
}

class _VideoItemWidgetState extends State<VideoItemWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  void _initializePlayer() {
    if (widget.isAsset) {
      _controller = VideoPlayerController.asset(widget.videoUrl);
    } else {
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
      );
    }

    _controller.initialize().then((_) {
      if (mounted) {
        setState(() {
          _isInitialized = true;
          // REMOVED: No more auto-play on init
          // _isPlaying = true; 
          // _controller.play();
          _controller.setLooping(true);
        });
      }
    });

    _controller.addListener(() {
      if (!mounted) return;
      if (_isPlaying != _controller.value.isPlaying) {
        setState(() {
          _isPlaying = _controller.value.isPlaying;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
  }

  @override
  Widget build(BuildContext context) {
    // ADDED: Wrap the entire widget with VisibilityDetector
    return VisibilityDetector(
      key: Key(widget.videoUrl), // A unique key for each video
      // This function is called whenever the visibility of the widget changes
      onVisibilityChanged: (visibilityInfo) {
        // The visibleFraction tells us how much of the widget is visible (0.0 to 1.0)
        // We'll consider it "visible" if more than 70% is on screen.
        final bool isVisible = visibilityInfo.visibleFraction > 0.7;

        if (!mounted || !_isInitialized) return;

        if (isVisible) {
          // If visible and not already playing, start playing.
          if (!_controller.value.isPlaying) {
            _controller.play();
          }
        } else {
          // If not visible and it's playing, pause it.
          if (_controller.value.isPlaying) {
            _controller.pause();
          }
        }
      },
      child: GestureDetector(
        onTap: _togglePlayPause,
        child: Center(
          child: _isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      VideoPlayer(_controller),
                      if (!_isPlaying)
                        const Icon(Icons.play_arrow, color: Colors.white, size: 60),
                    ],
                  ),
                )
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}