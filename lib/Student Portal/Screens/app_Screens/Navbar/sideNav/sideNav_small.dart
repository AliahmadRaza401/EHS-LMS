import 'package:flutter/material.dart';

class SideNavSmall extends StatefulWidget {
  SideNavSmall({Key? key}) : super(key: key);

  @override
  _SideNavSmallState createState() => _SideNavSmallState();
}

class _SideNavSmallState extends State<SideNavSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
        color: Color(0xff5EC6C0),
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 35,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/profile.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/attendance.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/enrollmentedit.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/idcard.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/invoice.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/medicalrecord.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/notification.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/socialactivities.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/navIcons/sociallearning.png",
            color: Colors.white,
            height: 30,
            width: 30,
          ),
          // Image.asset(
          //   "assets/navIcons/logout.png",
          //   color: Colors.white,
          //   scale: .9,
          // ),
        ],
      ),
    );
  }
}
