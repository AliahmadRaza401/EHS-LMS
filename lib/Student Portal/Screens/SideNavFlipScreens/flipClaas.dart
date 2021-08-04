import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/flip_drawer_small.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class FlipClass extends StatefulWidget {
  FlipClass({Key? key}) : super(key: key);

  @override
  _FlipClassState createState() => _FlipClassState();
}

class _FlipClassState extends State<FlipClass> {
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
                          Icons.notes,
                          color: Colors.white,
                          size: 20,
                        ),
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
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
          )),
      child: Column(
        children: [],
      ),
    );
  }

  Widget subHeader() {
    return Container(
      color: Color(0xff6EB7C6),
      // width: MediaQuery.of(context).size.width * 1,
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
                    height: MediaQuery.of(context).size.height * 0.04,
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
                    width: 10,
                  ),
                  Image.asset(
                    'assets/contentImages/flip.png',
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.04,
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
}
