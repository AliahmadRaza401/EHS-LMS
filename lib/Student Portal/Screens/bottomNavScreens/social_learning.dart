import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/home.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/material.dart';

class SocialLearning extends StatefulWidget {
  const SocialLearning({Key? key}) : super(key: key);

  @override
  _SocialLearningState createState() => _SocialLearningState();
}

class _SocialLearningState extends State<SocialLearning> {
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
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Column(
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
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(10),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.02,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0,
            ),
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width * .83,
              height: MediaQuery.of(context).size.height * .06,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Color(0xff707070),
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: .2,
                    blurRadius: 6,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  hintText: 'search for text(case sensitive)',
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .58,
            child: ListView(
              children: <Widget>[
                contentBox(
                  "General Discussion",
                  "",
                ),
                contentBox(
                  "ENG4U: Grade 12 English",
                  "Grade 12",
                ),
                contentBox(
                  "MHF4U: Advanced Functions, Grade 12, University Preparation",
                  "Class 2021 - Grade 12",
                ),
                contentBox(
                  "General Discussion",
                  "",
                ),
                contentBox(
                  "ENG4U: Grade 12 English",
                  "Grade 12",
                ),
                contentBox(
                  "MHF4U: Advanced Functions, Grade 12, University Preparation",
                  "Class 2021 - Grade 12",
                ),
                contentBox(
                  "General Discussion",
                  "",
                ),
                contentBox(
                  "ENG4U: Grade 12 English",
                  "Grade 12",
                ),
                contentBox(
                  "MHF4U: Advanced Functions, Grade 12, University Preparation",
                  "Class 2021 - Grade 12",
                ),
                contentBox(
                  "General Discussion",
                  "",
                ),
                contentBox(
                  "ENG4U: Grade 12 English",
                  "Grade 12",
                ),
                contentBox(
                  "MHF4U: Advanced Functions, Grade 12, University Preparation",
                  "Class 2021 - Grade 12",
                ),
                contentBox(
                  "General Discussion",
                  "",
                ),
                contentBox(
                  "ENG4U: Grade 12 English",
                  "Grade 12",
                ),
                contentBox(
                  "MHF4U: Advanced Functions, Grade 12, University Preparation",
                  "Class 2021 - Grade 12",
                ),
                contentBox(
                  "General Discussion",
                  "",
                ),
                contentBox(
                  "ENG4U: Grade 12 English",
                  "Grade 12",
                ),
                contentBox(
                  "MHF4U: Advanced Functions, Grade 12, University Preparation",
                  "Class 2021 - Grade 12",
                ),
                contentBox(
                  "General Discussion",
                  "",
                ),
                contentBox(
                  "ENG4U: Grade 12 English",
                  "Grade 12",
                ),
                contentBox(
                  "MHF4U: Advanced Functions, Grade 12, University Preparation",
                  "Class 2021 - Grade 12",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget contentBox(String title, description) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height * .006,
        horizontal: MediaQuery.of(context).size.width * .01,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0xff6EB7C6).withOpacity(.3),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 6,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .02,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: MediaQuery.of(context).size.height * .018,
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                  ),
                  backgroundColor: Color(0xffAEAEAE),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .58,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: AutoSizeText(
                      title,
                      style: TextStyle(
                        color: Color(0xff707070),
                        fontSize: MediaQuery.of(context).size.width * .033,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  AutoSizeText(
                    description,
                    style: TextStyle(
                      color: Color(0xff6EB7C6),
                      fontSize: 12.0,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_forward,
                  color: Color(0xff6EB7C6),
                  size: MediaQuery.of(context).size.height * .04,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
