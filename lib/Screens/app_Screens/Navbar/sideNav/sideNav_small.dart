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
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.2,
      child: Text("hy"),
    );
  }
}
