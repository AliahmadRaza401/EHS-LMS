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
          body(),
        ],
      ),
    );
  }

  Widget body() {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * .95,
      padding: EdgeInsets.symmetric(vertical: 50),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.amber,
              boxShadow: [
                BoxShadow(color: Colors.green, spreadRadius: 3),
              ],
            ),
            child: Row(
              children: [
                Column(
                  children: [Text("Home")],
                ),
              ],
            ),
          ),
        ],
      ),
      //  Row(
      //   children: [
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * .16,
      //       height: MediaQuery.of(context).size.height * .8,
      //       child: SideNavSmall(),
      //     ),
      //     SizedBox(
      //       width: MediaQuery.of(context).size.width * .74,
      //       height: MediaQuery.of(context).size.height * .8,
      //       child: ColoredBox(
      //         color: Colors.blue,
      //         // child: Column(
      //         //   children: [],
      //         // ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
