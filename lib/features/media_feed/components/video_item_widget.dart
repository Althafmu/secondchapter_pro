import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

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
          _isPlaying = true; // Auto-play
          _controller.play();
          _controller.setLooping(true);
        });
      }
    });

    _controller.addListener(() {
      if (_isPlaying != _controller.value.isPlaying) {
        if (mounted) {
          setState(() {
            _isPlaying = _controller.value.isPlaying;
          });
        }
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
    return GestureDetector(
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
                      Icon(Icons.play_arrow, color: Colors.white, size: 60),
                  ],
                ),
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
