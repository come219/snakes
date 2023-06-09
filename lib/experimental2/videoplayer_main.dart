import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoGridWidget extends StatefulWidget {
  @override
  _VideoGridWidgetState createState() => _VideoGridWidgetState();
}

class _VideoGridWidgetState extends State<VideoGridWidget> {
  late List<VideoPlayerController> _controllers;

  @override
  void initState() {
    super.initState();

    _controllers = List<VideoPlayerController>.generate(
      1,
      (index) => VideoPlayerController.asset(
        'assets/videos/Lstand_vid${index + 1}.mp4',
      ),
    );

    _initializeControllers();
  }

  // OLD @override
  // void initState() {
  //   super.initState();

  //   // _controllers = List<VideoPlayerController>.generate(
  //   //   6,
  //   //   (index) => VideoPlayerController.network(
  //   //     // Add your video URLs here
  //   //     'https://example.com/video$index.mp4',
  //   //   ),
  //   // );

  //   //_controllers = List<VideoPlayerController>;

  //   // _controllers = List<VideoPlayerController>.generate(
  //   //   6,
  //   //   (index) => VideoPlayerController.asset(
  //   //     'assets/assets/videos/Lstand_vid${index + 1}.mp4',
  //   //   ),
  //   // );

  //   // Update the widget after initialization

  //   // _controllers.add(VideoPlayerController.asset(
  //   //   'assets/videos/Lstand_vid1.mp4',
  //   // ));

  //   // Future.wait(_controllers.map((controller) => controller.initialize()));

  //   // //_initializeControllers();

  //   _controllers = List<VideoPlayerController>.generate(
  //     1,
  //     (index) => VideoPlayerController.asset(
  //       'assets/videos/Lstand_vid${index + 1}.mp4',
  //     ),
  //   );

  //   _initializeControllers();
  // }

  @override
  void dispose() {
    _controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _initializeControllers() async {
    await Future.wait(
        _controllers.map((controller) => controller.initialize()));
    setState(() {}); // Update the widget after initialization
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 1, // Number of columns
        children: List.generate(
          1, // Number of videos
          (index) => Container(
            margin: EdgeInsets.all(8.0),
            child: _controllers[index].value.isInitialized
                ? AspectRatio(
                    aspectRatio: _controllers[index].value.aspectRatio,
                    child: VideoPlayer(_controllers[index]),
                  )
                : Container(),
          ),
        ),
      ),
    );
  }
  // OLD @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     child: GridView.count(
  //       crossAxisCount: 3, // Number of columns
  //       children: List.generate(
  //         6, // Number of videos
  //         (index) => Container(
  //           margin: EdgeInsets.all(8.0),
  //           child: _controllers[index].value.isInitialized
  //               ? AspectRatio(
  //                   aspectRatio: _controllers[index].value.aspectRatio,
  //                   child: VideoPlayer(_controllers[index]),
  //                 )
  //               : Container(),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
