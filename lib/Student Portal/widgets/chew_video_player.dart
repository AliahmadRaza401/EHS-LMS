import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewiePlayer extends StatefulWidget {
  // This will contain the URL/asset path which we want to play

  final String videoUrl;

  ChewiePlayer({required this.videoUrl});

  @override
  _ChewiePlayerState createState() => _ChewiePlayerState();
}

class _ChewiePlayerState extends State<ChewiePlayer> {
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    // Wrapper on top of the videoPlayerController

    _chewieController = ChewieController(
      videoPlayerController: VideoPlayerController.network(
        widget.videoUrl,
      ),
      aspectRatio: 16 / 9,
      // Prepare the video to be played and display the first frame
      autoInitialize: true,
      looping: false,
      autoPlay: false,

      // Errors can occur for example when trying to play a video
      // from a non-existent URL
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff6EB7C6),
      body: Chewie(
        controller: _chewieController,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    // IMPORTANT to dispose of all the used resources
    _chewieController.dispose();
  }
}











// // import 'dart:async';

// // import 'package:flutter/material.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// // import 'package:video_player/video_player.dart';

// // class VideoPlayer extends StatefulWidget {
// //   //Video setup
// //   @override
// //   _VideoPlayerState createState() => _VideoPlayerState();
// // }

// // class _VideoPlayerState extends State<VideoPlayer> {
// //   late VideoPlayerController _controller;

// //   late Future<void> _initializeVideoPlayerFuture;

// //   @override
// //   void initState() {
// //     _controller = VideoPlayerController.network(
// //         "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
// //     //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
// //     _initializeVideoPlayerFuture = _controller.initialize();
// //     _controller.setLooping(true);
// //     _controller.setVolume(1.0);
// //     super.initState();
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return new Scaffold(
// //       appBar: AppBar(
// //         title: Text("Video Demo"),
// //       ),
// //       body: FutureBuilder(
// //         future: _initializeVideoPlayerFuture,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.done) {
// //             return Center(
// //               child: AspectRatio(
// //                 aspectRatio: _controller.value.aspectRatio,
// //                 child: VideoPlayer(),
// //               ),
// //             );
// //           } else {
// //             return Center(
// //               child: CircularProgressIndicator(),
// //             );
// //           }
// //         },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           setState(() {
// //             if (_controller.value.isPlaying) {
// //               _controller.pause();
// //             } else {
// //               _controller.play();
// //             }
// //           });
// //         },
// //         child:
// //         Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
// //       ),
// //     );
// //   }
// // }

