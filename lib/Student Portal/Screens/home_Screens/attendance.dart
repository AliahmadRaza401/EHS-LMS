import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  Attendance({Key? key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("Attendance"),
    );
  }
}