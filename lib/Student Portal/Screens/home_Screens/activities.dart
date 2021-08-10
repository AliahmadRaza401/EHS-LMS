import 'package:flutter/material.dart';

class Activities extends StatefulWidget {
  Activities({Key? key}) : super(key: key);

  @override
  _ActivitiesState createState() => _ActivitiesState();
}

class _ActivitiesState extends State<Activities> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("Activites")
    );
  }
}