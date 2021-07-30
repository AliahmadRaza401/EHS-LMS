import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/material.dart';

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
      color: Colors.white,
      child: Column(
        children: [
          card(context, "asdf", "asdf", "dc", "sdf"),
        ],
      ),
    );
  }

  Widget card(BuildContext context, String bgImage, String title, String dec,
      String btnStatus) {
    return Column(
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 0.84,
            margin: new EdgeInsets.only(top: 20),
            height: MediaQuery.of(context).size.height * 0.34,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border.all(color: Color(0xff707070))),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.84,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      image: new DecorationImage(
                        image: AssetImage(bgImage),
                        fit: BoxFit.cover,
                      )),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "FINANCIAL",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "ACCOUNTING",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "PRINCIPLES",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  margin: EdgeInsets.only(left: 240, top: 10),
                  child: ElevatedButton(
                      child: Text(btnStatus),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6EB7C6),
                        padding: EdgeInsets.only(top: -1, bottom: -1),
                      )),
                ),
                Text(
                  title,
                  style: TextStyle(
                      color: Color(0xff59939F),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  dec,
                  style: TextStyle(
                      color: Color(0xffAEAEAE),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            )),
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.84,
          decoration:
              BoxDecoration(border: Border.all(color: Color(0xff707070))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.video_call,
                color: Color(0xff59939F),
              ),
              Icon(
                Icons.sms,
                color: Color(0xff59939F),
              ),
              Icon(
                Icons.audiotrack,
                color: Color(0xff59939F),
              ),
              Icon(
                Icons.question_answer,
                color: Color(0xff59939F),
              ),
              Icon(
                Icons.download,
                color: Color(0xff59939F),
              ),
              Icon(
                Icons.camera,
                color: Color(0xff59939F),
              ),
            ],
          ),
        )
      ],
    );
  }
}
