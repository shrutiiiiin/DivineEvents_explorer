import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:video_player/video_player.dart';

class CustomTimeline extends StatefulWidget {
  const CustomTimeline({Key? key}) : super(key: key);

  @override
  _CustomTimelineState createState() => _CustomTimelineState();
}

class _CustomTimelineState extends State<CustomTimeline> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  late VideoPlayerController _videoController;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.repeat(reverse: true);
    _initializeVideoController();
  }
  Future<void> _initializeVideoController() async {
    _videoController = VideoPlayerController.network(
      'your_video_url_here.mp4', // Replace with your video URL
    );

    await _videoController.initialize();
    setState(() {}); // Trigger a rebuild after initialization
    _videoController.play();
    _videoController.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        if (_videoController.value.isInitialized)
          AspectRatio(
            aspectRatio: _videoController.value.aspectRatio,
            child: VideoPlayer(_videoController),
          ),

        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Center(
              child: Container(
                width: 50 + _animation.value * 100,
                height: 50 + _animation.value * 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orangeAccent,
                ),
                child: Center(
                  child: Text(
                    'Jai Shree Ram',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _videoController.dispose();
    super.dispose();
  }
}