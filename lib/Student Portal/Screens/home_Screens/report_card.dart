import 'dart:ffi';

import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/bottomNav/bottomNav.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ReportCard extends StatefulWidget {
  ReportCard({Key? key}) : super(key: key);

  @override
  _ReportCardState createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
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
            header(context), 
            subHeader(),
            content()],
          )),
    );
  }

  Widget subHeader() {
    return Container(
      width: MediaQuery.of(context).size.width *.97,
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
                      builder: (context) => BottomNav(currentPage: "home")));
                },
                child: Row(
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
                    'assets/contentImages/pie-chart.png',
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Report Cards",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .22,
          ),
          Column(
            children: [
              Row(
                children: [
                  Image.asset('assets/contentImages/list.png'),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .03,
                  ),
                  Image.asset('assets/contentImages/Feather.png')
                ],
              )
            ],
          )
        ],
      ),
    );
  }


  Widget content() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30))),
      width: MediaQuery.of(context).size.width *.97,
      height: MediaQuery.of(context).size.height * .68,
      child: Row(
        children: [
          Column(
            children: [
              Column(
                
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .68,
                    width: 50,
                    child: SideNavSmall(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  card('assets/contentImages/grade.png', "Grade Book",
                      "Default Academic Session", "Class 2021 - Grade 12")
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .03,
              ),
              Row(
                children: [
                  card('assets/contentImages/reporticon.png', "Report Cards",
                      "Default Academic Session", "Class 2021 - Grade 12")
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget card(String img, String title, String desc, String grades) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color(0xff6EB7C6)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 4,
              spreadRadius: 2,
              offset: Offset(0, 2),
            )
          ]),
      height: MediaQuery.of(context).size.height * .22,
      width: MediaQuery.of(context).size.width * .6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(img),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(title,
                          style: TextStyle(
                              fontSize: 20, color: Color(0xff14514D))),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        desc,
                        style: TextStyle(color: Color(0xffFF5801)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        grades,
                        style: TextStyle(color: Color(0xff5C98A4)),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xff6EB7C6),
                    size: MediaQuery.of(context).size.height * .035,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
