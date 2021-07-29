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
      color: Color(0xff5EC6C0),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Icon(
            Icons.menu,
            color: Colors.white,
            size: 30,
          ),
          Image.asset(
            "assets/navIcons/file.png",
          ),
          Image.asset("assets/navIcons/earth.png"),
          Image.asset("assets/navIcons/Group.png"),
          Image.asset("assets/navIcons/login.png"),
          Image.asset("assets/navIcons/notification.png"),
          Image.asset("assets/navIcons/Outline.png"),
          Image.asset("assets/navIcons/pie-chart.png"),
          SizedBox(
            height: 8,
          ),
          Image.asset("assets/navIcons/resume.png"),
          SizedBox(
            height: 8,
          ),
          Image.asset("assets/navIcons/sport.png"),
          SizedBox(
            height: 10,
          ),
          Image.asset("assets/navIcons/logout.png"),
        ],
      ),
    );
  }
}
