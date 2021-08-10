import 'package:flutter/material.dart';
import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class MyVideoPlayer extends StatefulWidget {
  // final String path;

  // MyVideoPlayer({required this.path});

  @override
  _MyVideoPlayerState createState() => new _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  // late final String path;
  // _MyVideoPlayerState({required this.path});

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  late Future<void> _future;

  Future<void> initVideoPlayer() async {
    await _videoPlayerController.initialize();
    setState(() {
      print(_videoPlayerController.value.aspectRatio);
      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: _videoPlayerController.value.aspectRatio,
        autoPlay: false,
        looping: false,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('assets/video/school.mp4');
    // 'https://static.videezy.com/system/resources/previews/000/053/030/original/TrailerSchool37.mp4');
    _future = initVideoPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return new FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          return new Center(
            child: _videoPlayerController.value.isInitialized
                ? AspectRatio(
                    aspectRatio: _videoPlayerController.value.aspectRatio,
                    child: Chewie(
                      controller: _chewieController,
                    ),
                  )
                : new CircularProgressIndicator(),
          );
        });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
}


// Running ......:............:

// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class ChewiePlayer extends StatefulWidget {
//   // This will contain the URL/asset path which we want to play

//   final String videoUrl;

//   ChewiePlayer({required this.videoUrl});

//   @override
//   _ChewiePlayerState createState() => _ChewiePlayerState();
// }

// class _ChewiePlayerState extends State<ChewiePlayer> {
//   late ChewieController _chewieController;
//   late Future<void> _initializeVideoPlayerFuture;

//   bool initialized = false;

//   @override
//   void initState() {
//     super.initState();
//     // Wrapper on top of the videoPlayerController

//     _chewieController = ChewieController(
//       videoPlayerController: VideoPlayerController.network(
//         widget.videoUrl,
//       ),
//       aspectRatio: 16 / 9,
//       // Prepare the video to be played and display the first frame
//       autoInitialize: true,
//       looping: false,
//       autoPlay: false,

//       // Errors can occur for example when trying to play a video
//       // from a non-existent URL
//       errorBuilder: (context, errorMessage) {
//         return Center(
//           child: Text(
//             errorMessage,
//             style: TextStyle(color: Colors.white),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // backgroundColor: Color(0xff6EB7C6),
//         body: Chewie(
//       controller: _chewieController,
//     ));
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     // IMPORTANT to dispose of all the used resources
//     _chewieController.dispose();
//   }
// }

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
// //         "https://static.videezy.com/system/resources/previews/000/053/030/original/TrailerSchool37.mp4");
// //     //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
// //     _initializeVideoPlayerFuture = _controller.initialize();
// //     _controller.setLooping(false);
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
// //       body: FutureBuilder(
// //         future: _initializeVideoPlayerFuture,
// //         builder: (context, snapshot) {
// //           if (snapshot.connectionState == ConnectionState.done) {
// //             return VideoPlayer();
// //           } else {
// //             return Center(
// //               child: CircularProgressIndicator(),
// //             );
// //           }
// //         },
// //       ),
// //     );
// //   }
// // }
