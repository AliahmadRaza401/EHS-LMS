import 'dart:ui' as ui;

import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/lms.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/notices.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/profile.dart';
import 'package:ehs_lms/Student%20Portal/Screens/bottomNavScreens/social_learning.dart';
import 'package:flutter/material.dart';

import '../../home.dart';

bool viewVisible = false;

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int iconIndex = 0;
  bool activeColor = false, nonActiveColor = false;

  final mainWidget = [
    HomeScreen(),
    SocialLearning(),
    LMS(),
    Notices(),
    Profile(),
    Text('Index 5: Menu'),
    Text('Index 6: Menu'),
    Text('Index 7: Menu'),
    Text('Index 8: Menu'),
    Text('Index 9: Menu'),
    Text('Index 10: Menu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          // backgroundColor: Colors.yellow,
          body: Center(child: mainWidget.elementAt(iconIndex)),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width * .02,
          bottom: MediaQuery.of(context).size.height * .12,
          child: Visibility(
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            visible: viewVisible,
            child: Container(
              width: MediaQuery.of(context).size.width * .96,
              height: MediaQuery.of(context).size.height * .08,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      upBarContainer(context, 6, "assets/images/calendar.png")
                    ],
                  ),
                  Column(
                    children: [
                      upBarContainer(context, 7, "assets/images/calendar.png")
                    ],
                  ),
                  Column(
                    children: [
                      upBarContainer(context, 8, "assets/images/calendar.png")
                    ],
                  ),
                  Column(
                    children: [
                      upBarContainer(context, 9, "assets/images/calendar.png")
                    ],
                  ),
                  Column(
                    children: [
                      upBarContainer(context, 10, "assets/images/calendar.png")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * .108,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              bottomNavigationBar: nav(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget nav(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * .15,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            child: CustomPaint(
              painter: NavPainter(),
              child: Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * .064,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .43,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .04,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          iconIndex = 0;
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/navIcons/home_icon.png",
                                        key: Key("1"),
                                        color: iconIndex == 0
                                            ? Color(0xff23FFFF)
                                            : Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .06,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          iconIndex = 1;
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/images/social_learning.png",
                                        color: iconIndex == 1
                                            ? Color(0xff23FFFF)
                                            : Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .06,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          iconIndex = 2;
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/images/lms.png",
                                        color: iconIndex == 2
                                            ? Color(0xff23FFFF)
                                            : Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .06,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .43,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * .04,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          iconIndex = 3;
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/images/notice_board.png",
                                        color: iconIndex == 3
                                            ? Color(0xff23FFFF)
                                            : Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .06,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          iconIndex = 4;
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/navIcons/user_icon.png",
                                        color: iconIndex == 4
                                            ? Color(0xff23FFFF)
                                            : Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .06,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          iconIndex = 5;
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/images/calendar.png",
                                        color: iconIndex == 5
                                            ? Color(0xff23FFFF)
                                            : Colors.white,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .06,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * .437,
            bottom: MediaQuery.of(context).size.height * .03,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  viewVisible = !viewVisible;
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width * .13,
                height: MediaQuery.of(context).size.width * .13,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  // color: Colors.red,
                  gradient: RadialGradient(
                    radius: .8,
                    colors: [
                      Color(0xff6EB7C6),
                      Color(0xff558D98),
                    ],
                  ),
                  border: Border.all(
                    color: Color(0xff23FFFF).withOpacity(.37),
                    width: 1,
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
                child: Image.asset(
                  viewVisible == true
                      ? "assets/navIcons/down_icon.png"
                      : "assets/navIcons/up_icon.png",
                  scale: 2.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget upBarContainer(BuildContext context, int index, String icon) {
    return Container(
      width: MediaQuery.of(context).size.width * .12,
      height: MediaQuery.of(context).size.width * .12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        // color: Colors.red,
        gradient: RadialGradient(
          radius: .8,
          colors: [
            Color(0xff6EB7C6),
            Color(0xff558D98),
          ],
        ),
        border: Border.all(
          color: Color(0xff23FFFF).withOpacity(.37),
          width: 1,
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
      child: GestureDetector(
        onTap: () {
          setState(() {
            iconIndex = index;
          });
        },
        child: Image.asset(
          icon,
          color: Colors.white,
          scale: 2.2,
        ),
      ),
    );
  }
}

class NavPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(
      size.width * 0.004614119,
      size.height * 0.05259381,
    );
    path_0.cubicTo(
      size.width * 0.009443175,
      size.height * -0.004075251,
      size.width * 0.01932323,
      0,
      size.width * 0.01932323,
      0,
    );
    path_0.lineTo(
      size.width * 0.4131611,
      0,
    );
    path_0.cubicTo(
      size.width * 0.4131611,
      0,
      size.width * 0.4272908,
      size.height * -0.01345602,
      size.width * 0.4297299,
      size.height * 0.08,
    );
    path_0.cubicTo(
      size.width * 0.4335380,
      size.height * 0.29,
      size.width * 0.4482915,
      size.height * 0.7,
      size.width * 0.5023666,
      size.height * 0.7,
    );
    path_0.cubicTo(
      size.width * 0.5558787,
      size.height * 0.7,
      size.width * 0.5710878,
      size.height * 0.28,
      size.width * 0.5754356,
      size.height * 0.08,
    );
    path_0.cubicTo(
      size.width * 0.5781106,
      size.height * -0.01155936,
      size.width * 0.5903877,
      size.height * 0.00002563051,
      size.width * 0.5903877,
      size.height * 0.00002563051,
    );
    path_0.lineTo(
      size.width * 0.9762589,
      size.height * 0.00002563051,
    );
    path_0.cubicTo(
      size.width * 0.9762589,
      size.height * 0.00002563051,
      size.width * 0.9891738,
      size.height * -0.009047570,
      size.width * 0.9950892,
      size.height * 0.05774554,
    );
    path_0.cubicTo(
      size.width * 1.001005,
      size.height * 0.1245387,
      size.width * 0.9999206,
      size.height * 0.2671724,
      size.width * 0.9999206,
      size.height * 0.2671724,
    );
    path_0.lineTo(
      size.width * 0.9999206,
      size.height * 1.2,
    );
    path_0.lineTo(
      0,
      size.height * 1.2,
    );
    path_0.lineTo(
      0,
      size.height * 0.2267019,
    );
    path_0.cubicTo(
      0,
      size.height * 0.2267019,
      size.width * -0.0002172725,
      size.height * 0.1092629,
      size.width * 0.004614119,
      size.height * 0.05259381,
    );
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.shader = ui.Gradient.linear(
      Offset(size.width * 0.5, 0),
      Offset(size.width * 0.5, size.height * 0.9),
      [
        Color(0xff7DD1E2),
        Color(0xff375C63),
      ],
      [0, 1],
    );
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
