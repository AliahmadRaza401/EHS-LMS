import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Student%20Portal/widgets/home/homeScreenNoticeBoardContainer.dart';
import 'package:ehs_lms/Student%20Portal/widgets/home/homeScreenWidgets.dart';
import 'package:ehs_lms/Student%20Portal/widgets/home/profile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool barSize = false;
  bool profileVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          homeBg(context),
          homeArea(context),
          Visibility(
            visible: profileVisible,
            child: Positioned(
                top: MediaQuery.of(context).size.height * 0.14,
                left: MediaQuery.of(context).size.width * 0.02,
                child: profile(context)),
          ),
        ],
      ),
      // bottomNavigationBar: bottomNavigation(context),
    );
  }

  Widget homeHeader(BuildContext context) {
    return CustomPaint(
      painter: HeaderCustomPaint(),
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * .036,
            left: MediaQuery.of(context).size.width * .03,
            right: MediaQuery.of(context).size.width * .07,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      AutoSizeText(
                        "Hey, John doe",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Segoe UI",
                        ),
                        maxLines: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      currentDate(Colors.white, 14.0),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .12,
                    height: MediaQuery.of(context).size.width * .12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(
                        color: Color(0xffFFF5F5),
                        width: 1.0,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          profileVisible = !profileVisible;
                        });
                      },
                      child: Image.asset(
                        'assets/images/dp.png',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget homeBg(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/homeScreenBg.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .12,
          bottom: MediaQuery.of(context).size.height * .35,
        ),
        child: widgetArea(context),
      ),
    );
  }

  Widget homeArea(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      // color: Colors.yellow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              homeHeader(context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              homeBottomContainer(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget homeBottomContainer(BuildContext context) {
    return CustomPaint(
      painter: BottomContainerCustomPaint(),
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * .37,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 18.0,
                right: 18.0,
                top: 10.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      AutoSizeText(
                        "Online Notice Board",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .11,
                        height: MediaQuery.of(context).size.width * .11,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80.0),
                          gradient: RadialGradient(
                            radius: .6,
                            colors: [
                              Color(0xff23FFFF),
                              Color(0xff558D98),
                            ],
                          ),
                          border: Border.all(
                            color: Color(0xffDBE7E9),
                            width: 1.0,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.4),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.message_outlined,
                                      color: Colors.white,
                                      size: MediaQuery.of(context).size.width *
                                          .05,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Divider(
                color: Colors.white,
                thickness: 1.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .91,
                  height: MediaQuery.of(context).size.height * .27,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * .16,
                      ),
                      child: Column(
                        children: [
                          bottomCard(
                            context,
                            "assets/images/activities.png",
                            "Activities",
                            "Recent Activities",
                            "assets/images/dp.png",
                            "You updated login Credentials",
                            "Credentials updated",
                            "15 July",
                            "",
                          ),
                          bottomCard(
                            context,
                            "assets/images/notice.png",
                            "Notices",
                            "Recent Notices",
                            "assets/images/dp.png",
                            "Learning Portal Demonstration Video",
                            "",
                            "22 July",
                            "www.youtube.com/video",
                          ),
                          bottomCard(
                            context,
                            "assets/images/event.png",
                            "Events",
                            "Upcoming Events",
                            "assets/images/dp.png",
                            "Elite High School Karachi Expo",
                            "",
                            "18 July",
                            "",
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * .01,
                              horizontal:
                                  MediaQuery.of(context).size.width * .16,
                            ),
                            child: Divider(
                              color: Colors.white,
                              thickness: 2.0,
                            ),
                          ),
                        ],
                      ),
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
}
