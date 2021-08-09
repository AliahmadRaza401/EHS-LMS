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
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1user.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1useredit.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1sport.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1social-media.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1pie-chart.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1notification.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1grade.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1edit.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1attendance.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .01),
          Image.asset(
            "assets/navIcons/1logout.png",
            color: Colors.white,
            scale: .9,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .03),
        ],
      ),
    );
  }
}
