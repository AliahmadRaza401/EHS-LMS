import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/bottomNav/bottomNav.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/flip_drawer_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/chew_video_player.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:ehs_lms/Student%20Portal/widgets/innerShadow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class FlipClass extends StatefulWidget {
  FlipClass({Key? key}) : super(key: key);

  @override
  _FlipClassState createState() => _FlipClassState();
}

class _FlipClassState extends State<FlipClass> {
  // //Video setup
  // late VideoPlayerController _controller;
  // late Future<void> _initializeVideoPlayerFuture;

  // @override
  // void initState() {
  //   // _controller = VideoPlayerController.asset("video/intro.mp4");
  //   _controller = VideoPlayerController.network("https://youtu.be/W9JZ1BPDGkY");
  //   _initializeVideoPlayerFuture = _controller.initialize();
  //   _controller.setLooping(true);
  //   _controller.setVolume(1.0);
  //   _controller.play();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.76, -0.8),
            radius: 0.4,
            colors: [
              Color(0xffffffff),
              Color(0xff6EB7C6),
            ],
            stops: <double>[0.0, 1.0],
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                header(context),
              ],
            ),
            body(),
          ],
        ),
      ),
    );
  }

  Widget body() {
    return Container(
      width: MediaQuery.of(context).size.width * .97,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .02,
              horizontal: MediaQuery.of(context).size.width * .06,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color(0xff558D98),
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .06,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/lms.png',
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Text(
                          " Learning Management System",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          subHeader(),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  height: MediaQuery.of(context).size.height * .63,
                  child: FlipDrawerSmall(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .87,
                  height: MediaQuery.of(context).size.height * .63,
                  child: content(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // VideoPlayer(_controller),
            // FutureBuilder(
            //   future: _initializeVideoPlayerFuture,
            //   builder: (context, snapshot) {
            //     if (snapshot.connectionState == ConnectionState.done) {
            //       return Center(
            //         child: AspectRatio(
            //           aspectRatio: _controller.value.aspectRatio,
            //           child: VideoPlayer(_controller),
            //         ),
            //       );
            //     } else {
            //       return Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     }
            //   },
            // ),

            unitCard("Unit 1"),

            unitCard("Unit 2"),
            unitCard("Unit 3")
          ],
        ),
      ),
    );
  }

  Widget unitCard(unit) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => BottomNav(currentPage: 'reportGrade')));
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .01,
          vertical: MediaQuery.of(context).size.height * .01,
        ),
        padding: EdgeInsets.only(bottom: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        // width: MediaQuery.of(context).size.width * .9,
        // height: MediaQuery.of(context).size.width * .9,
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                height: MediaQuery.of(context).size.height * .2,
                child: ChewiePlayer(
                    videoUrl:
                        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'
                    // 'assets/video/butterfly.mp4'
                    )),
            InnerShadow(
              blur: 5,
              color: const Color(0xff5F9FAC),
              offset: const Offset(5, 10),
              child: ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xff6EB7C6),
                  ),
                  child: Center(
                      child: Text(
                    unit,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.06),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text("Lesson 1"),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Introduction to mangerial Accounting",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 4),
                        Text("Description: "),

                        SizedBox(
                          width: MediaQuery.of(context).size.width * .7,
                          child: Text(
                            "Accounting definition, Identify the activities adn users associated with Accounting.",
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff6EB7C6)),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "● Three activities ● Accounting data users ● Basic concepts",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 4),
                        // Text(
                        //   '● Fundamentals of Accounting ● Assets ● Liabilities ● owner’s equity ',
                        //   style: TextStyle(fontSize: 10),
                        // ),
                        SizedBox(height: 4),
                        Text(
                          '● objectives of Accounting',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Image.asset(
                              'assets/contentImages/pfile.png',
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Introduction to managerial Accounting",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/contentImages/wfile.png',
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Lesson plan",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/contentImages/dfile.png',
                            ),
                            SizedBox(width: 10),
                            Text(
                              "AFL",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/contentImages/lfile.png',
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Introduction to managerial Accounting",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget subHeader() {
    return Container(
      color: Color(0xff6EB7C6),
      width: MediaQuery.of(context).size.width * .97,
      height: MediaQuery.of(context).size.height * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/lms.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Learning Management System",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .02,
                  ),
                  Image.asset(
                    'assets/contentImages/flip.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Flip Class",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget unit(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.02,
        ),
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 2),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff6EB7C6),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Unit 1",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("Lesson 1"),
              ),
              SizedBox(height: 2),
              Text(
                "Introduction to mangerial Accounting",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 2),
              Row(
                children: [
                  Text("Description: "),
                  Text(
                    "Accounting definition, Identify the",
                    style: TextStyle(fontSize: 15, color: Color(0xff6EB7C6)),
                  )
                ],
              ),
              SizedBox(height: 2),
              Text(
                "activities adn users associated with Accounting.",
                style: TextStyle(fontSize: 15, color: Color(0xff6EB7C6)),
              ),
              SizedBox(height: 2),
              Text(
                "● Three activities ● Accounting data users ● Basic concepts",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 2),
              Text(
                '● Fundamentals of Accounting ● Assets ● Liabilities ● owner’s equity ',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 2),
              Text(
                '● objectives of Accounting',
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.document_scanner),
                  SizedBox(width: 10),
                  Text(
                    "Introduction to managerial Accounting",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.document_scanner),
                  SizedBox(width: 10),
                  Text(
                    "Lesson plan",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.document_scanner),
                  SizedBox(width: 10),
                  Text(
                    "AFL",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.document_scanner),
                  SizedBox(width: 10),
                  Text(
                    "Introduction to managerial Accounting",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              ClipPath(
                clipper: OvalBottomBorderClipper(),
                child: Container(
                  height: 70,
                  color: Colors.blue,
                  child: Center(child: Text("OvalBottomBorderClipper()")),
                ),
              ),
            ],
          ),
        ));
  }
}
