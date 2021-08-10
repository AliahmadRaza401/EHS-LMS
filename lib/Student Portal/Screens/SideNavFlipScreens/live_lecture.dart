import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/flip_drawer_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveLacture extends StatefulWidget {
  LiveLacture({Key? key}) : super(key: key);

  @override
  _LiveLactureState createState() => _LiveLactureState();
}

class _LiveLactureState extends State<LiveLacture> {
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
            Container(
              width: MediaQuery.of(context).size.width * 0.87,
              height: MediaQuery.of(context).size.height * 0.68,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _mylistTile(
                      "assets/contentImages/Icon ionic-logo-whatsapp@2x.png",
                      "Whatsapp Video"),
                  _mylistTile("assets/contentImages/Icon awesome-skype@2x.png",
                      "Skype Video"),
                  _mylistTile(
                      "assets/contentImages/Icon ionic-ios-videocam@2x.png",
                      "Zoom"),
                  _mylistTile(
                      "assets/contentImages/Icon awesome-facebook-messenger@2x.png",
                      "Messenger"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.030,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      "Supported Platforms(s)",
                      style: TextStyle(
                          color: Color(0xff6EB7C6),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.020,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: _mylistTile2(
                              "assets/contentImages/Icon awesome-bell@2x.png",
                              "Upcoming Lectures",
                              "No Upcoming Lectures")),
                      Expanded(
                          child: _mylistTile2(
                              "assets/contentImages/Icon feather-bell@2x.png",
                              "Previous Lectures",
                              "No Previous Lectures")),
                    ],
                  )
                ],
              ),
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
                    width: 10,
                  ),
                  Image.asset(
                    'assets/images/lms.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(
                    width: 2,
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
                    width: MediaQuery.of(context).size.width * .01,
                  ),
                  Image.asset(
                    'assets/contentImages/live.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("Live Lacture",
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

  _mylistTile(String imgPath, String titleText) {
    return Container(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset(
            imgPath,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.6,
          ),
        ),
        title: Text(
          titleText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17.0,
          ),
        ),
        subtitle: Text(
          "Social Discussions",
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        minLeadingWidth: 40,
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ToPage),
          // );
        },
      ),
    );
  }

  _mylistTile2(String imgPath, String titleText, String subtitleText) {
    return Container(
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Image.asset(
              imgPath,
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          ),
        ),
        title: Text(
          titleText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15.0,
          ),
        ),
        subtitle: Text(
          subtitleText,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => ToPage),
          // );
        },
      ),
    );
  }
}
