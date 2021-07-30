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
            size: 30,
          ),
          Image.asset(
            "assets/navIcons/profile.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/resume.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/group.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/file.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/pie-chart.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/Outline.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/login.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/notification.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/sport.png",
            color: Colors.white,
            scale: .9,
          ),
          Image.asset(
            "assets/navIcons/logout.png",
            color: Colors.white,
            scale: .9,
          ),
        ],
      ),
    );
  }
}
