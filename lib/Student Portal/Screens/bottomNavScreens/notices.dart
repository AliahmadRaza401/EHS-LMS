import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/bottomNav/bottomNav.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Notices extends StatefulWidget {
  Notices({Key? key}) : super(key: key);

  @override
  _NoticesState createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
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
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                BottomNav(currentPage: "home")));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.height * .02,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
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
                        Image(
                          image: AssetImage('assets/images/notice_board.png'),
                          color: Colors.white,
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .02),
                        Text(
                          "Notices",
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
                  height: MediaQuery.of(context).size.height * .69,
                  child: SideNavSmall(),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .87,
                  height: MediaQuery.of(context).size.height * .69,
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
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(children: [
          Row(
            children: [
              SizedBox(height: 20),
              Image.asset(
                'assets/images/notice_board.png',
                height: MediaQuery.of(context).size.height * .03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .02,
              ),
              Text(
                "Notices",
                style: TextStyle(color: Color(0xff14514D), fontSize: 20),
              )
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  notetile(
                      "Learning Portal Demonstration Video",
                      "Welcome to EHS Learning Platform. Check out the video below to learn how to navigate the platform.",
                      "https://www.youtube.com/watch?v=5TnHTrXsBOU"),
                  SizedBox(height: MediaQuery.of(context).size.height * .002),
                  notetile(
                      "Learning Portal Demonstration Video",
                      "Welcome to EHS Learning Platform. Check out the video below to learn how to navigate the platform.",
                      "https://www.youtube.com/watch?v=5TnHTrXsBOU"),
                  SizedBox(height: MediaQuery.of(context).size.height * .002),
                  notetile(
                      "Learning Portal Demonstration Video",
                      "Welcome to EHS Learning Platform. Check out the video below to learn how to navigate the platform.",
                      "https://www.youtube.com/watch?v=5TnHTrXsBOU"),
                  SizedBox(height: MediaQuery.of(context).size.height * .002),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }



  Widget notetile(String title, String desc, String link) {
    return ExpansionTile(
        
        collapsedBackgroundColor: Colors.grey[200],
        collapsedIconColor: Color(0xff6EB7C6),
        iconColor: Color(0xff6EB7C6),
        title: Text(
          title,
          style: TextStyle(color: Color(0xff14514D)),
        ),
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xffB9DCE4),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            width: double.infinity,
            padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  children: [
                    Text(
                      desc,
                      style: TextStyle(color: Color(0xff707070)),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .01,
                ),
                Row(
                  children: [
                    Text("Link : ", style: TextStyle(color: Color(0xff707070))),
                    Expanded(
                      child: Text(
                        link,
                        style: TextStyle(color: Color(0xff0A7DEF)),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]);
  }
}
