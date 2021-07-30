import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LMS extends StatefulWidget {
  LMS({Key? key}) : super(key: key);

  @override
  _LMSState createState() => _LMSState();
}

class _LMSState extends State<LMS> {
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
                        Icon(
                          Icons.supervised_user_circle_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Profile",
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
                        Icon(
                          Icons.social_distance,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Social Learning",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  height: MediaQuery.of(context).size.height * .68,
                  child: SideNavSmall(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .87,
                  height: MediaQuery.of(context).size.height * .68,
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
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            card(
              context,
              "assets/contentImages/Image_1.png",
              "FINANCIAL ACCOUNTING PRINCIPLES",
              "(Class 2021 - Grade 12)",
              "Core",
              0xff6EB7C6,
            ),
            card(
              context,
              "assets/contentImages/Image_2.png",
              "Visual Arts (AVI3M)",
              "(Class 2021 - Asynchronous Courses)",
              "Elective",
              0xffD8DE84,
            ),
            card(
              context,
              "assets/contentImages/Image_3.png",
              "AMU4M: Music, Grade 12",
              "(Class 2021 - Grade 12)",
              "Core",
              0xff6EB7C6,
            ),
          ],
        ),
      ),
    );
  }

  Widget card(BuildContext context, String bgImage, String title, String desc,
      String btnStatus, int color) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .014,
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.82,
        height: MediaQuery.of(context).size.height * 0.44,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  height: MediaQuery.of(context).size.height * 0.22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        bgImage,
                      ),
                      fit: BoxFit.fill,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .14,
                    height: MediaQuery.of(context).size.height * .04,
                    decoration: BoxDecoration(
                      color: Color(color),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Center(
                      child: AutoSizeText(
                        btnStatus,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * .02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      title,
                      style: TextStyle(
                        color: Color(0xff59939F),
                        fontSize: 20.0,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .8,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.height * .02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: AutoSizeText(
                        desc,
                        style: TextStyle(
                          color: Color(0xffAEAEAE),
                          fontSize: 20.0,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .01,
              ),
              child: Row(
                children: [
                  ClipPath(
                    clipper: OvalTopBorderClipper(),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .82,
                      height: MediaQuery.of(context).size.height * .07,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(.06),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width * .02,
                              ),
                              child: Image.asset(
                                "assets/contentImages/lms_files_icon.png",
                                color: Color(0xff6EB7C6),
                                scale: 1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .02,
                            ),
                            child: Image.asset(
                              "assets/contentImages/lms_message_icon.png",
                              color: Color(0xff6EB7C6),
                              scale: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .02,
                            ),
                            child: Image.asset(
                              "assets/contentImages/lms_status_icon.png",
                              color: Color(0xff6EB7C6),
                              scale: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .02,
                            ),
                            child: Image.asset(
                              "assets/contentImages/lms_faq_icon.png",
                              color: Color(0xff6EB7C6),
                              scale: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .02,
                            ),
                            child: Image.asset(
                              "assets/contentImages/lms_download_icon.png",
                              color: Color(0xff6EB7C6),
                              scale: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * .02,
                            ),
                            child: Image.asset(
                              "assets/contentImages/lms_video_icon.png",
                              color: Color(0xff6EB7C6),
                              scale: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
