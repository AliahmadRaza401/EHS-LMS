import 'package:ehs_lms/Screens/app_Screens/Navbar/sideNav/sideNav_small.dart';
import 'package:ehs_lms/widgets/header.dart';
import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: [
          Row(
            children: [
              Header(context),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .14,
                height: MediaQuery.of(context).size.height * .8,
                child: SideNavSmall(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .86,
                height: MediaQuery.of(context).size.height * .8,
                child: ColoredBox(
                  color: Colors.blue,
                  // child: Column(
                  //   children: [],
                  // ),
                ),
              ),
            ],
          ),
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}
