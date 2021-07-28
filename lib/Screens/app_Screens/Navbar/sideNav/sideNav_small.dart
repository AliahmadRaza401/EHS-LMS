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
      color: Colors.yellow,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text("hy"),
          Text("hy"),
         
        ],
      ),
    );
  }
}
