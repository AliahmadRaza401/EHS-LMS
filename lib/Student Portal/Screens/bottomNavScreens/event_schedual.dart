import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/Student%20Portal/Screens/app_Screens/home.dart';
import 'package:ehs_lms/Student%20Portal/widgets/calender.dart';
import 'package:ehs_lms/Student%20Portal/widgets/header.dart';
import 'package:ehs_lms/Student%20Portal/widgets/home/homeScreenWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:table_calendar/table_calendar.dart';

class EventSchedual extends StatefulWidget {
  EventSchedual({Key? key}) : super(key: key);

  @override
  _EventSchedualState createState() => _EventSchedualState();
}

class _EventSchedualState extends State<EventSchedual> {
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
                          Icons.calendar_today_outlined,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Event",
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
      padding: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
          )
          ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Calendar(),
            msg(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget msg() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(
        right: 10,
        top: MediaQuery.of(context).size.height * 0.01,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Google Calender",
                style: TextStyle(color: Color(0xff14514D), fontSize: 18),
              ),
            ],
          ),
          Divider(color: Color(0xff707070)),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff707070),
                    blurRadius: 2,
                  )
                ],
                color: Color(0xffF4FFA4),
                borderRadius: BorderRadius.circular(10)),
            child: Wrap(
              children: [
                Text("You can sync Classe365 calendars with Google Calendar."),
                Text("Syncing will allow you to see Classe365 Events in your "),
                Text("personal calendar."),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text("Note:"),
                  ],
                ),
                Text("Please ensure that you don’t sync one calendar from "),
                Text("more than one account. If more than one account sync a"),
                Text("shared calendar, there will be duplication of events."),
              ],
            ),
          )
        ],
      ),
    );
  }
}
